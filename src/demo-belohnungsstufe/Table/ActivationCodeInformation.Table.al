table 50101 "Activation Code Information"
{
    Caption = 'Activation Code Information';
    TableType = Normal;
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Activation Code"; Text[14])
        {
            Caption = 'Activation Code';
            DataClassification = SystemMetadata;
            Description = 'Activation code used to activate Customer Rewards.';
        }

        field(2; "Date Activated"; Date)
        {
            Caption = 'Date Activated';
            DataClassification = SystemMetadata;
            Description = 'Date Customer Rewards was activated';
        }

        field(3; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            DataClassification = SystemMetadata;
            Description = 'Date Customer Rewards activation expires.';
        }
    }

    keys
    {
        key(PK; "Activation Code")
        {
            Clustered = true;
        }
    }
}