namespace DefaultPublisher.DOS;

page 50103 ChapterList
{
    ApplicationArea = All;
    Caption = 'ChapterList';
    PageType = List;
    SourceTable = Chapters;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
                }
            }
        }
    }
}
