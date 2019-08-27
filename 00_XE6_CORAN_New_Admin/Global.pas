{------------------------------------------------------------------------------}
{          Cette unité contient les fonctions globales au programme  }
{------------------------------------------------------------------------------}
unit Global;

interface

uses Classes, SysUtils;

type
TCommande = (cmdTitres, cmdLignes, cmdFin);

function Tableau(Commande : TCommande; Champ : TStringList; var TailleChamp : TStringList) : String;

implementation

{------------------------------------------------------------------------------}
{                           Génération du tableau ASCII                          }
{------------------------------------------------------------------------------}
function Tableau(Commande : TCommande; Champ : TStringList; var TailleChamp : TStringList) : String;

   {Centrage du texte}
   function FormatTxt(TailleChamp : Integer; Item : String) : String;

   var
   TailleItem,Deb,Fin : Integer;

   begin
   TailleItem  := Length(Item);

      If TailleItem > TailleChamp then
      begin
      {Si la taille du texte à inséré est supérieur à la taille du champ on
      tronque le texte}
      Result := '|' + Copy(Item,1,TailleChamp);
      end
      else
      begin
      {On détermine le nombre d'espace avant et apres le texte}
      Deb := (TailleChamp - TailleItem) div 2;
      Fin := TailleChamp - TailleItem - Deb;
      Result := '|' + StringOfChar(' ',Deb) + Item + StringOfChar(' ',Fin);
      end;
   end;

var
Temp : String;
I : Integer;

begin

   Try

      If TailleChamp.Count < Champ.Count then
      begin
      {Si la taille de tous les champs n'est pas définis et bien on prends la taile
      du texte du champ comme taille de champ}

         For I:= TailleChamp.Count to Champ.Count-1 do
         TailleChamp.Add(IntToStr(Length(Champ.Strings[I])));
      end;

   Temp := '';

      For I:=0 to Champ.Count-1 do
      begin

         {Si la taille du champ est nul on prends la taille du texte du champ}
         If Length(TailleChamp.Strings[I]) = 0 then
         TailleChamp.Strings[I] := IntToStr(Length(Champ.Strings[I]));

      Temp := Temp + FormatTxt(StrToInt(TailleChamp.Strings[I]),Champ.Strings[I]);
      end;

   Temp := Temp + '|';

      {Commande =
       cmdTitres : Création de l'entete du tableau
       cmdLignes : Ajout d'une ligne
       cmdFin : Cloture du tableau} 
      If Commande = cmdTitres then
      Result := '   +' + StringOfChar('-',Length(Temp)-2) + '+' + #13#10 + '   ' +
             Temp + #13#10 + '   +' + StringOfChar('-',Length(Temp)-2) + '+'
      else if Commande = cmdLignes then Result := '   ' + Temp
      else Result := '   +' + StringOfChar('-',Length(Temp)-2) + '+';
   except
   Result := 'Erreur à la construction de la ligne.';
   end;
end;

end.
