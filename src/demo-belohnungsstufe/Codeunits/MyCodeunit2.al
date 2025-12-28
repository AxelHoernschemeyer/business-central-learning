codeunit 50104 MyCodeunit2
{
    trigger OnRun()
    var
        MyCodeUnit1: Codeunit MyCodeunit;
        Result: Boolean;
    begin
        Result := MyCodeUnit1.MyFunction(5, 'Test')
    end;

}