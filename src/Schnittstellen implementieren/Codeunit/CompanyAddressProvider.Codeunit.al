codeunit 65100 CompanyAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text
    Begin
        exit('Company Address \ Denmark 2800');
    End;
}