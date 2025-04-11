table 50105 Chapters
{
    Caption = 'Chapters';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Title; Text[100])
        {
            Caption = 'Title';
        }
        field(2; Description; Text[500])
        {
            Caption = 'Description';
        }
        field(3; NumberOfWords; Integer)
        {
            Caption = 'NumberOfWords';
        }
        field(4; BookCode; Code[20])
        {
            Caption = 'BookCode';
        }
    }
    keys
    {
        key(PK; BookCode, Title)
        {
            Clustered = true;
        }
    }
}
