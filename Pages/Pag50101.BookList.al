namespace DefaultPublisher.DOS;

page 50101 BookList
{
    ApplicationArea = All;
    Caption = 'BookList';
    PageType = List;
    SourceTable = Books;
    UsageCategory = Lists;
    CardPageId = BookCard;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Book No."; Rec."BookCode")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book No.';
                }
                field("Book Name"; Rec."Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Name';
                }
                field("Book Type"; Rec."Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Type';
                }
                field("Author"; Rec."AuthorNo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Description';
                }
                field("Author Name"; Rec."AuthorName")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Description';
                }
                field("Genre"; Rec."Genre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Genre';
                }
                field("Date Published"; Rec."DatePublished")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Date Published';
                }
                field("Publisher No."; Rec."PublisherNo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Publisher No.';
                }
                field("Publisher Name"; Rec."PublisherName")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Publisher Name';
                }
            }
        }
    }
}
