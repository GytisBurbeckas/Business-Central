codeunit 50102 "Reverse Input"
{
    trigger OnRun()
    begin

    end;

    procedure MakeInputReverse(textVar: Text)
    var
        resultVar: text;

        I: Integer;

    begin
        resultVar := '';

        for I := text.StrLen(textVar) downTo 1 do
            resultVar += text.CopyStr(textVar, I, 1);

        Message(resultVar);

    end;

    var
        myInt: Integer;
}