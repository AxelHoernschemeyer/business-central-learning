table 50300 "CRONUS Course"
{
    DataClassification = CustomerContent;
    Description = 'Cours';

    fields
    {
        field(10; Code; Code[10])
        {
            DataClassification = CustomerContent;
            Description = 'Kurs Code';
        }
        field(20; Name; Text[30])
        {
            DataClassification = CustomerContent;
            Description = 'Kurs Name';
        }
        field(30; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Description = 'Kurs Beschreibung';
        }
        field(40; Typ; Option)
        {
            OptionMembers = "Präsenzschulung",eLearning,Fernschulung;
            OptionCaption = 'Präsenzschulung,eLearning,Fernschulung';
            DataClassification = CustomerContent;
            Description = 'Kurs Typ';
        }
        field(50; Dauer; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Kurs Dauer in Stunden';
        }
        field(60; Preis; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Kurs Preis';
        }
        field(70; Active; Boolean)
        {
            DataClassification = CustomerContent;
            Description = 'Ist der Kurs aktiv?';
        }
        field(80; Difficult; Integer)
        {
            DataClassification = CustomerContent;
            Description = 'Schwierigkeitsgrad des Kurses (1-5)';
        }
        field(90; Erfolgsquote; Integer)
        {
            DataClassification = CustomerContent;
            Description = 'Erfolgsquote der Teilnehmer in Prozent';
        }
        field(100; Kursleitercode; Code[20])
        {
            DataClassification = CustomerContent;
            Description = 'Kursleiter Code';
            TableRelation = "Resource" where(Type = const(Person));
        }
        field(120; "Name des Kursleiters"; Text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Lookup("Resource"."Name" where("No." = field(Kursleitercode)));
            Description = 'Name des Kursleiters';

        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }

        key(Schluessel1; Kursleitercode)
        {
            Clustered = false;
        }

        key(Schluessel2; Typ)
        {
            Clustered = false;
        }
    }
}