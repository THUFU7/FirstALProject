table 50100 Books
{
    Caption = 'Books';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; BookCode; Code[20])
        {
            Caption = 'BookCode';
        }
        field(2; Title; Text[100])
        {
            Caption = 'Title';
        }
        field(3; Description; Text[2048])
        {
            Caption = 'Description';
        }
        field(4; AuthorNo; Code[20])
        {
            Caption = 'AuthorNo';
            TableRelation = Employee."No.";

            trigger OnValidate()
            var
                EmployeeRec: Record Employee;
            begin
                if Rec."AuthorNo" <> '' then begin
                    if EmployeeRec.Get(Rec."AuthorNo") then begin
                        Rec.AuthorName := EmployeeRec.FullName();
                    end else begin
                        Rec."AuthorName" := '';
                    end;
                end;
            end;
        }
        field(5; AuthorName; Text[100])
        {
            Caption = 'AuthorName';
        }
        field(6; Genre; Enum BookGenre)
        {
            Caption = 'Genre';
        }
        field(7; DatePublished; Date)
        {
            Caption = 'Date Published';

            trigger OnValidate()
            begin
                if Rec.DatePublished > Today then
                    Error('Date Published cannot be later than today.');
            end;
        }

        field(8; PublisherNo; Code[20])
        {
            Caption = 'PublisherNo';
            TableRelation = Vendor."No.";

            trigger OnValidate()
            var
                VendorRec: Record Vendor;
            begin
                if Rec."PublisherNo" <> '' then begin
                    if VendorRec.Get(Rec."PublisherNo") then
                        Rec.PublisherName := VendorRec.Name
                    else
                        Rec.PublisherName := '';
                end;
            end;
        }

        field(9; PublisherName; Text[100])
        {
            Caption = 'PublisherName';
        }
        field(10; ApplicationDate; Date)
        {
            Caption = 'ApplicationDate';
        }
        field(11; CreatedBy; Code[20])
        {
            Caption = 'CreatedBy';
        }
    }
    keys
    {
        key(PK; BookCode)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit "No. Series";
    begin
        Rec.ApplicationDate := Today;
        Rec.CreatedBy := UserId;
        Rec."BookCode" := NoSeriesMgt.GetNextNo('BOOKREG', Today, true);
    end;
}
