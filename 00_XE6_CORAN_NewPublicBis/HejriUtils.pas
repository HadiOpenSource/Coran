(*Hejri Calendar
The Hejri calender is based on Moon months, and was created by Muslims. We need to create a unit
that helps us to convert the Gregorian calendar to the Moon (Hejri) Calender based on these facts:
1. The first day of Hejri 16 July 622 in the Gregorian calender.
2. The Hejri year contains 354.367056 days.
3. The Hejri month contains 29.530588 days.
The Hejri unit can be used to get current the moon phase.
This is the code of the Hejri unit:*)
{
********************************************************************************
 HejriUtils: Hejri Calender converter, for FreePascal and Delphi
                   The HejriUtils Unit contains these procedures and functions:
                    DateToHejri: This procedure is used to convert Gregorian date to Hejri date			 
 Author: Motaz Abdel Azeem
 email: motaz@code.sd
 Home page: http://motaz.freevar.com/
 License: LGPL
 Created on: 26.Sept.2009
 Last modifie: 26.Sept.2009
*******************************************************************************
}
unit HejriUtils;
//{$IFDEF FPC}
//{$mode objfpc}{$H+}
//{$ENDIF}

interface

uses
 Classes, SysUtils;

const
 HejriMonthsEn: array [1 .. 12] of string = ( 'Moharram' , 'Safar' , 'Rabie Awal' ,
 'Rabie Thani' , 'Jumada Awal' , 'Jumada Thani' , 'Rajab' , 'Shaban' , 'Ramadan' ,
 'Shawal' , 'Thi-Alqaida' , 'Thi-Elhajah' );

 HejriMonthsAr: array [1..12] of string = ('محرم '  ,  'صفر' ,  'ربيع أول ' , 'ربيع ثاني ' ,  'جمادى الأول ' ,  'جمادى الثاني ' ,  'رجب ' ,  'شعبان ' ,  'رمضان ' , 'شوال ' ,  'ذي القعدة ' , ' ذي الحجة ');

 HejriYearDays = 354.367056;
 HejriMonthDays = 29.530588;
 procedure DateToHejri(ADateTime: TDateTime; var Year, Month, Day: Word);
 function HejriToDate(Year, Month, Day: Word): TDateTime;
 procedure HejriDifference(Year1, Month1, Day1, Year2, Month2, Day2: Word;
 var YearD, MonthD, DayD: Word);

 implementation

var
 HejriStart : TDateTime;

procedure DateToHejri(ADateTime: TDateTime; var Year, Month, Day: Word);
var
 HejriY: Double;
 Days: Double;
 HejriMonth: Double;
 RDay: Double;
begin
 HejriY:= ((Trunc(ADateTime) - HejriStart - 1) / HejriYearDays);
 Days:= Frac(HejriY);
 Year:= Trunc(HejriY) + 1;
 HejriMonth:= ((Days * HejriYearDays) / HejriMonthDays);
 Month:= Trunc(HejriMonth) + 1;
 RDay:= (Frac(HejriMonth) * HejriMonthDays) + 1;
 Day:= Trunc(RDay);
end;


function HejriToDate(Year, Month, Day: Word): TDateTime;
begin
 Result:= (Year - 1) * HejriYearDays + (HejriStart - 0) +
           (Month - 1) * HejriMonthDays + Day + 1;
end;


procedure HejriDifference(Year1, Month1, Day1, Year2, Month2, Day2: Word; var
 YearD, MonthD, DayD: Word);
var
 Days1: Double;
 Days2: Double;
 DDays: Double;
 RYear, RMonth: Double;
begin
 Days1:= Year1 * HejriYearDays + (Month1 - 1) * HejriMonthDays + Day1 - 1;
 Days2:= Year2 * HejriYearDays + (Month2 - 1) * HejriMonthDays + Day2 - 1;
 DDays:= Abs(Days2 - Days1);
 RYear:= DDays / HejriYearDays;
 RMonth:= (Frac(RYear) * HejriYearDays) / HejriMonthDays;
 DayD:= Round(Frac(RMonth) * HejriMonthDays);
 YearD:= Trunc(RYear);
 MonthD:= Trunc(RMonth);
end;

initialization
 HejriStart:= EncodeDate( 622, 7, 16);
end.