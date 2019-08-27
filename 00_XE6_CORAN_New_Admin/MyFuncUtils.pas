unit MyFuncUtils;


interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls;

  function ReadFile(FileName: string): string;
  function WriteFile(FileName: string; Data: string): boolean;
  function Purge(Msg,substr: string): string;
  function Replace(Msg,substr,repby: string): string;
  function StrCount(Msg, substr: string): integer;
  function Asc(Msg: string): integer;
  function IsIn(SubStr,StrIn: string):boolean;
  function AllowNumKeys(key: char): char;
  function Cut(var S: string; Index,count: integer): string;
  function Num(S: string): integer;
  //
  function droite(substr: string; s: string): string;
  function DroiteDroite(substr: string; s: string): string;
  function gauche(substr: string; s: string): string;
  function GaucheDuDernier(substr: string; s: string): string;
  function NbSousChaine(substr: string; s: string): integer;
  function NDroite(substr: string; s: string;n:integer): string;
  function GaucheNDroite(substr: string; s: string;n:integer): string;
  function StrReplace(Substr,replace,s:string):string;

implementation

// lit le fichier "filename" et retourne son contenu
function ReadFile(FileName: string): string;
var Fi: textfile; buf: string;
begin
  try
  AssignFile(Fi,FileName);
  Reset(Fi);
  repeat
    readln(Fi,buf);
    result := result + buf;
  until eof(Fi);
  CloseFile(Fi);
  except
    result := '';
  end;
end;

// cr�e le fichier "filename" et �crit "data" dedans
function WriteFile(FileName, data: string): boolean;
var Fi: textfile;
begin
  if not FileExists(FileName) then
  begin
    result := false;
    exit;
  end;
  try
    AssignFile(Fi,FileName);
    Rewrite(Fi);
    write(fi,data);
    CloseFile(fi);
    result := true;
  except
    result := false;
  end;
end;

// efface toutes les instances de "substr" dans "msg"
function Purge(Msg,substr: string): string;
begin
  while pos(substr,msg)>0 do Delete(msg,pos(substr,msg),length(substr));
  result := msg;
end;

// remplace toutes les instances de "substr" par "repby" dans "msg"
function Replace(Msg,substr,repby: string): string;
begin
  while pos(substr,msg)>0 do
  begin
    Insert(repby,msg,pos(substr,msg));
    Delete(msg,pos(substr,msg),length(substr));
  end;
  result := msg;
end;

// compte le nombre d'instances de "substr" dans "msg"
function StrCount(Msg, substr: string): integer;
begin
  result := 0;
  while pos(substr,msg)>0 do
  begin
    result := result + 1;
    Delete(msg,1,pos(substr,msg)+length(substr));
  end;
end;

// retourne le code ASCII du premier caract�re de "msg" (comme ASC() en qbasic)
function Asc(Msg: string): integer;
var i: integer;
begin
  if length(msg)=0 then
  begin
    result := 0;
    exit;
  end;
  result := ord(msg[1]);
end;

// retourne "true" si une instance de "Substr" est trouv�e dans "strin"
function IsIn(SubStr,StrIn: string):boolean;
begin
  if pos(substr,strin)>0 then result := true
  else result := false;
end;

// � mettre dans les OnKeyPress de vos Edits qui ne doivent contenir que des nombres
// key := AllowNumKeys(key);
function AllowNumKeys(key: char): char;
begin
  if not (key in ['1','2','3','4','5','6','7','8','9','0',#8]) then result := #0
  else result := key;
end;

// copie "count" caract�res de "S" � partir de "index" et les supprime
function Cut(var S: string; Index,count: integer): string;
begin
  result := copy(S,Index,Count);
  Delete(S,index,Count);
end;

// proc�dure VAL transform�e en fonction, �vite les erreurs g�n�r�es par StrToInt
function Num(S: string): integer;
var code, value: integer;
begin
  Val(S,value,code);
  if code<>0 then result := -1
  else result := value;
end;

//********************************************************************************************************************
{Fonctions explode et implode
Ce sont 2 fonctions diponibles par d�faut en PHP.
Implode permet de convertir une TstringList en string en s�parant chaque �l�ment par le s�parateur choisi (par d�faut le ';')
Explode r�alise l' op�ration inverse (il faut sp�cifier aussi le s�parateur)
}

function Explode(ch : string; sep: string = ';'):TStringList;
var
 p : integer;
begin
	p := pos(sep,ch);
	explode := TStringList.Create;
	while p > 0 do begin
	  explode.Add(copy(ch,1,p-1));
	  if p <= length(ch) then ch := copy(ch,p+ length(sep),length(ch));
	  p := pos(sep,ch);
	end;
	explode.Add(ch);
end;

function Implode(lst:TStringList; sep : string =';'):string;
var
  i : integer;
  s : string;
begin
	 i:= 0;
	 while i < lst.Count - 1 do begin
	   s := s + lst[i] + sep;
	   i := i + 1;
	 end;
	 if i < lst.Count then s := s + lst[i]; //Ne mets pas de s�parateur sur le dernier �l�ment
	 result := s;
end;

//*******************************************************************************************************

function StrReplace(Substr,replace,s:string):string;
{============================================================================}
{remplace toutes les sous-chaines Substr par replace                         }
{ ex : StrReplace ('toto', 'tata', 'le toto est ..') renvoie 'le tata est ..'}
{============================================================================}
var ChaineSource,ChaineCible:string;
    i,TailleChaineRemplacement:integer;
begin
  ChaineSource:=s;
  ChaineCible:='';
  TailleChaineRemplacement:=length(Substr);
  while pos(Substr,ChaineSource)>0 do  //tant que l'on trouve une sous-chaine
  begin
    i:=pos(Substr,ChaineSource)-1; // position de la sous-chaine � remplacer
    ChaineCible:=ChaineCible+copy(ChaineSource,1,i)+replace;
    delete(ChaineSource,1,i+TailleChaineRemplacement);//on retire de chaineTemp
  end;
  Result:=ChaineCible+ChaineSource;
end;

function droite(substr: string; s: string): string;
{============================================================================}
{Renvoie ce qui est � droite d'une sous chaine de caract�res                 }
{ ex : Droite('aa', 'phidelsaacom') renvoie com                              }
{============================================================================}

begin
  if pos(substr,s)=0 then result:='' else
    result:=copy(s, pos(substr, s)+length(substr), length(s)-pos(substr, s)+length(substr));
end;

function droiteDroite(substr: string; s: string): string;
{============================================================================}
{ fonction qui renvoie la sous chaine de caract�re situ� � droite de la sous }
{ chaine substr situ�e la plus � droite                                      }
{ ex: si substr = '\' et S= 'truc\tr\essai.exe droiteDroite renvoie essai.exe}
{============================================================================}
begin
  Repeat
    S:=droite(substr,s);
  until pos(substr,s)=0;
  result:=S;
end;

function gauche(substr: string; s: string): string;
{============================================================================}
{ fonction qui renvoie la sous chaine de caract�re situ� � gauche de la sous }
{ chaine substr                                                              }
{ ex: si substr = '\' et S= 'truc\tr\essai.exe' gauche renvoie truc           }
{============================================================================}
begin
  result:=copy(s, 1, pos(substr, s)-1);
end;

function GaucheDuDernier(substr: string; s: string): string;
{============================================================================}
{ fonction qui renvoie la sous chaine de caract�re situ�e � gauche de la     }
{derni�re sous chaine substr                                                 }
{ ex: si substr = '\' et S= 'truc\tr\essai.exe' gauche renvoie truc\tr       }
{============================================================================}
var
 s1:string;
 i:integer;
begin
  s1:='';
  for i:=1 to NbSousChaine(substr, s)-1 do
  begin
    s1:=s1+gauche(substr,s)+substr;
    s:=droite(substr,s);
  end;
  s1:=s1+gauche(substr,s);
  result:=s1;
end;

function NbSousChaine(substr: string; s: string): integer;
{==================================================================================}
{ renvoie le nombre de fois que la sous chaine substr est pr�sente dans la chaine S}
{==================================================================================}
begin
  result:=0;
  while pos(substr,s)<>0 do
  begin
    S:=droite(substr,s);
    inc(result);
  end;
end;

function NDroite(substr: string; s: string;n:integer): string;
{==============================================================================}
{ renvoie ce qui est � droite de la n ieme sous chaine substr de la chaine S   }
{==============================================================================}
var i:integer;
begin
  for i:=1 to n do
  begin
    S:=droite(substr,s);
  end;
  result:=S;
end;

function GaucheNDroite(substr: string; s: string;n:integer): string;
{==============================================================================}
{ renvoie ce qui est � gauche de la droite de la n ieme sous chaine substr     }
{ de la chaine S                                                               }
{ ex : GaucheNDroite('/','c:machin\truc\essai.exe',1) renvoie 'truc'           }
{ Permet d'extraire un � un les �l�ments d'une chaine s�par�s par un s�parateur}
{==============================================================================}
var i:integer;
begin
  S:=S+substr;
  for i:=1 to n do
  begin
    S:=copy(s, pos(substr, s)+length(substr), length(s)-pos(substr, s)+length(substr));
  end;
  result:=copy(s, 1, pos(substr, s)-1);
end;




end.

