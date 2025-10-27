tableextension 50147 CustomerValidationExtension extends Customer
{
    trigger OnBeforeInsert()
    var
        MinLength: Integer;
    begin
        MinLength := 3;
        if StrLen(Name) < MinLength then
            Error('Der Kundenname muss mindestens %1 Zeichen lang sein.', MinLength);
    end;
}
