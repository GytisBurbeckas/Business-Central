codeunit 50104 "Find Duplicates"
{
    trigger OnRun()
    begin

    end;

    procedure FindDuplicates()
    var
        I: Integer;
        J: Integer;
        number: Integer;
        duplicatesList: List of [Integer];
        duplicates: Text;

    begin

        GenerateArray();

        for I := 1 to IntList.Count - 1 do begin

            for J := I + 1 to IntList.Count do begin

                if IntList.Get(I) = IntList.Get(J) then begin //If duplicate is found

                    if (duplicatesList.Contains(IntList.Get(I))) then begin //If duplicate arealidy is in list
                        //Do nothing
                    end else begin //Add new duplicate
                        duplicatesList.AddRange(IntList.Get(I));
                    end;
                end;
            end;
        end;

        foreach number in duplicatesList do begin
            duplicates += Format(number, 0, 0) + ' ';
        end;

        Message('Besikartojančios reikšmės: ' + duplicates);

    end;

    local procedure GenerateArray()
    var
        randomNumber: Integer;
        I: integer;
    begin

        for I := 1 to 100 do begin
            randomNumber := System.Random(50);
            IntList.AddRange(randomNumber);
        end;
    end;

    var
        myInt: Integer;
        IntList: List of [Integer];
}