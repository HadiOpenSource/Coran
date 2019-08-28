unit UQText;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls, ClipBrd,
  ToolWin, ActnList, ImgList, System.Actions, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

    procedure DBGridSoranameCellClick(Column: TColumn);
    procedure DBGridSoranameCellClickCDS;
    procedure DBGridSoranameDrawColumnCell(Sender: TObject;
                const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState); Overload;

type
  THackDBGrid = class(TDBGrid);

implementation

uses USplash, URecherche, UAbout, HejriUtils, Midaslib, MyFuncUtils, REMain, ULecCoran;


procedure DBGridSoranameCellClick(Column: TColumn);
begin
  DBGridSoranameCellClickCDS;
end;

procedure DBGridSoranameDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // Surbrillance de la ligne sous la souris
  if (THackDBGrid(MainForm.DBGridSoraname).DataLink.ActiveRecord + 1 =
      THackDBGrid(MainForm.DBGridSoraname).Row)
  or (gdFocused in State) or (gdSelected in State) then
  begin
    MainForm.DBGridSoraname.Canvas.Brush.Color := clSkyBlue;
    MainForm.DBGridSoraname.Canvas.Font.Style := MainForm.DBGridSoraname.Canvas.Font.Style + [fsBold];
    MainForm.DBGridSoraname.Canvas.Font.Color := clRed;
  end;
  //
  if Column.FieldName = 'LieuNouzoul' then
    with (sender as TDBGrid).Canvas do
    begin
      //Brush.color := clMedGray;        // Coloration de toute la colonne
      Font.Color  := clBlack;            // Couleur de la Fonte
      Font.Style  := [fsBold];           // Style GRAS
      Font.Size   := 10;                 // Taille : 10
    end;
   //
   if (FormLecture.SoraCDS.FieldByName('SORANO').AsInteger mod 2) = 0 Then
   //if (DMZadM.FDSoraname.FieldByName('SORANO').AsInteger mod 2) = 0 Then                                       // Si N° enregistrement paire
     Begin
       if MainForm.DBGridSoraname.Canvas.Brush.Color =  MainForm.DBGridSoraname.Color then        // Si même couleur
           MainForm.DBGridSoraname.Canvas.Brush.Color := clMedGray;
     End;

   // Cette ligne est obligatoire à la fin de tous les traitements
   MainForm.DBGridSoraname.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

//
// Affichage du texte de la SORA sélectionnée  avec "QuranCDS"
//
procedure DBGridSoranameCellClickCDS;
Var
  i, j : Integer;
  sAya : WideString;

begin
   //
   MainForm.Editor.Clear;
   //
   i := 1;
   MainForm.Editor.Tag := MainForm.DBGridSoraname.Fields[1].AsInteger;
   //
   FormLecture.Qurancds.Open;
   FormLecture.Soracds.Open;
   //
   MainForm.LabelNameSora.Caption := MainForm.DBGridSoraname.Fields[0].AsString;
   MainForm.LabelSora.Caption := 'سورة';
   MainForm.LabelSora.BringToFront;
   MainForm.LabelNameSora.BringToFront;
   //
   j := MainForm.DBGridSoraname.Fields[1].AsInteger;
   //
  if ((j <> 1) AND (j <> 9))  then
      Begin
         sAya := 'بسم الله الرحمن الرحيم';
          with MainForm.Editor do
             begin
                SelAttributes.Size := 16;
                //Font.Name := 'Tradionnal Arabic';
                SelAttributes.Style := [fsBold];
                SelAttributes.Color := clGreen;
                //
                Lines.Add(sAya);
                Font.Name := 'UthmanicHafs1 Ver09.otf';
             end;
      End;
   //
   FormLecture.Qurancds.First;
   FormLecture.QuranCDS.Locate('SoraNo', j, []);
   //
   While Not (FormLecture.Qurancds.EoF)  DO
     Begin
       //
       if  FormLecture.Qurancds.FieldByName('SoraNo').AsInteger = j Then
          Begin
             with MainForm.Editor do
               begin
                  SelAttributes.Size := 16;
                  Font.Name := 'UthmanicHafs1 Ver09.otf';
                  SelAttributes.Style := [fsBold];
                  SelAttributes.Color := clMaroon;
                  //
                  if Moshaf = 'Tanzil'  then
                     Lines.Add(IntToStr(i)+ '.' + FormLecture.Qurancds.FieldByName('AIATANZIL').AsWideString)
                  else
                    Lines.Add(IntToStr(i)+ '.' + FormLecture.Qurancds.FieldByName('AIAMADINA').AsWideString);
               end;
               i:=i+1;
          End
       else
          Begin
            Exit;
          End;
       FormLecture.Qurancds.Next;
     End;
end;




end.
