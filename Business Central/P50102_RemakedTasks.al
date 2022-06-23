page 50102 "Reverse Input"
{
    Caption = 'Remaked tasks';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Tasks)
            {
                field("Text to reverse"; inputText)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ReverseInput)
            {
                Caption = 'Reverse input';
                ApplicationArea = All;

                trigger OnAction()
                var
                    ReverseFunc: Codeunit "Reverse Input";
                begin
                    ReverseFunc.MakeInputReverse(inputText);
                end;
            }

            action(FindMinMax)
            {
                Caption = 'Find Min Max';
                ApplicationArea = All;

                trigger OnAction()
                var
                    MinMaxFunc: Codeunit "Find Min Max";
                begin
                    MinMaxFunc.FindMinMax();
                end;
            }

            action(FindDuplicates)
            {
                Caption = 'Find Duplicates';
                ApplicationArea = All;

                trigger OnAction()
                var
                    FindDuplicatesFunc: Codeunit "Find Duplicates";
                begin
                    FindDuplicatesFunc.FindDuplicates();
                end;
            }

            action(FindVowelsAndConsonants)
            {
                Caption = 'Find Vowels and Consonants';
                ApplicationArea = All;

                trigger OnAction()
                var
                    FindVowelsAndConsonantsFunc: Codeunit "Find Vowels and Consonants";
                begin
                    FindVowelsAndConsonantsFunc.FindVowelsAndConsonants();
                end;
            }
        }
    }
    var
        myInt: Integer;
        inputText: Text;
}