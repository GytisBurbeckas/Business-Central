codeunit 50105 "Find Vowels and Consonants"
{
    trigger OnRun()
    begin

    end;

    procedure FindVowelsAndConsonants()
    var
        I: Integer;
        vowelsCount: Integer;
        consonantsCount: Integer;
        givenText: Text;
        letter: Text;
        vowels: Text;
        consonants: Text;

    begin
        givenText := 'Programuotojo ar tiesiog bet kokio IT specialisto profesija taps vs labiau įprasta.';
        vowels := 'AaĄaEeĘęĖėIiĮįYyOoUuŲųŪū';
        consonants := 'BbCcČčDdFfGgHhJjKkLlMmNnPpRrSsŠšTtVvZzŽž';

        GenerateArray();

        for I := 1 to text.StrLen(givenText) do begin

            //gets one letter
            letter := text.CopyStr(givenText, I, 1);

            if (vowels.Contains(letter)) then begin
                vowelsCount += 1;
            end;


            if (consonants.Contains(letter)) then begin
                consonantsCount += 1;
            end;
        end;

        Message('Balsių skaičius: ' + Format(vowelsCount, 0, 0) + '\' + 'Priebalsių skaičius: ' + Format(consonantsCount, 0, 0));
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