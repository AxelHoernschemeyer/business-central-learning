codeunit 50111 Validations
{
    trigger OnRun()
    begin

    end;


    local procedure CheckForPlusSign(TextToVerify: Text)
    begin
        if TextToVerify.Contains('+') then
            Message('A + sign has been found.');
    end;
}