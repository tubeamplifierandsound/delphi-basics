program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
{
Const
  �onsonants =  }
Type
  TSet = Set of '�'..'�';

Var
  wordF: text;
  Result: TSet = ['�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�'];

Procedure Scan(Var F: text; Var Res: TSet);
  Var
    Symb: Char;
  Begin
    Reset(F);
    Repeat
      Read(F,Symb);
      If Symb In Res then
        Res := Res - [Symb]
    Until Symb = '.';
    Close(F);
  End;

Procedure Outp(Var F: text; Var Res: TSet);
  Var
    Symb: Char;
  Begin
    Append(F);
    For Symb := '�' to '�' do
    Begin
      If Symb In Res then
        Write(F,Symb);
    End;
    Close(F);
  End;

begin
  AssignFile(wordF,'Words.txt');
  Scan(wordF,Result);
  Outp(wordF,Result);
end.
