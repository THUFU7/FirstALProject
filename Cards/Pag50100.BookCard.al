namespace DefaultPublisher.DOS;

page 50100 BookCard
{
    ApplicationArea = All;
    Caption = 'Books';
    PageType = Card;
    SourceTable = Books;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Book No."; Rec."BookCode")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book No.';
                    Editable = false;

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
                    Editable = false;
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
                    Editable = false;
                }

            }
            part(ChapterList; Chapter)
            {
                Caption = 'Chapters';
                ApplicationArea = All;
                SubPageLink = BookCode = FIELD("BookCode");
            }
        }
    }
}

page 50102 Chapter
{
    ApplicationArea = Lists;
    Caption = 'Chapter';
    PageType = ListPart;
    SourceTable = Chapters;

    layout
    {
        area(Content)
        {
            repeater(Chapters)
            {
                Caption = 'Chapters';

                field("Title"; Rec.Title)
                {
                    ApplicationArea = All;
                    ToolTip = 'Chapter Title';
                }
                field("Description"; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Chapter Description';
                }
                field("NumberOfWords"; Rec.NumberOfWords)
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of Words in Chapter';
                }
                field("BookCode"; Rec."BookCode")
                {
                    ApplicationArea = All;
                    ToolTip = 'Book Code';
                    Editable = false;
                }
            }
        }
    }
}
