#noinspection RubyDynamicConstAssignment
def fromRoman(romanNumber)
    # Replace the following line with the actual code!
    romanMapping = {
      "I" => 1,
      "IV" => 4,
      "V" => 5,
      "IX" => 9,
      "X" => 10,
      "XL" => 40,
      "L" => 50,
      "XC" => 90,
      "C" => 100,
      "CD" => 400,
      "D" => 500,
      "CM" => 900,
      "M" => 1000
    }

    unless romanNumber.match(/[[:upper:]]*[IVXLCDM]/)
        raise TypeError
    end

    total = romanMapping[romanNumber[0]]
    romanNumber.chars.each_cons(2) do |nA, nB|
        total += romanMapping[nB]
        puts totalA: total
        total -= romanMapping[nA] * 2 if romanMapping[nA] < [nB]
        puts totalB: total
    end
    total
end

def toRoman(arabicNumber)
    arabicNumberlocal = arabicNumber
    if arabicNumberlocal >= 1 and arabicNumberlocal <=3999
    else
        raise RangeError
        end
        romanNumber = ''
        while arabicNumerlocal !=0 do
            if ((arabicNumberlocal - 1000) >= 0)
                romanNumber += "M"
                arabicNumberlocal = arabicNumberlocal - 1000
            elsif ((arabicNumberlocal - 900) >= 0)
                romanNumber += "CM"
                arabicNumberlocal = arabicNumberlocal - 900
            elsif ((arabicNumberlocal - 500) >= 0)
                romanNumber += "D"
                arabicNumberlocal = arabicNumberlocal - 500
            elsif ((arabicNumberlocal - 400) >= 0)
                romanNumber += "CD"
                arabicNumberlocal = arabicNumberlocal - 400
            elsif ((arabicNumberlocal - 100) >= 0)
                romanNumber += "C"
                arabicNumberlocal = arabicNumberlocal - 100
            elsif ((arabicNumberlocal - 90) >= 0)
                romanNumber += "XC"
                arabicNumberlocal = arabicNumberlocal - 90
            elsif ((arabicNumberlocal - 50) >= 0)
                romanNumber += "L"
                arabicNumberlocal = arabicNumberlocal - 50
            elsif ((arabicNumberlocal - 40) >= 0)
                romanNumber += "XL"
                arabicNumberlocal = arabicNumberlocal - 40
            elsif ((arabicNumberlocal - 10) >= 0)
                romanNumber += "X"
                arabicNumberlocal = arabicNumberlocal - 10
            elsif ((arabicNumberlocal - 9) >= 0)
                romanNumber += "IX"
                arabicNumberlocal = arabicNumberlocal - 9
            elsif ((arabicNumberlocal - 5) >= 0)
                romanNumber += "V"
                arabicNumberlocal = arabicNumberlocal - 5
            elsif ((arabicNumberlocal - 4) >= 0)
                romanNumber += "IV"
                arabicNumberlocal = arabicNumberlocal - 4
            elsif ((arabicNumberlocal - 3) >= 0)
                romanNumber += "III"
                arabicNumberlocal = arabicNumberlocal - 3
            elsif ((arabicNumberlocal - 2) >= 0)
                romanNumber += "II"
                arabicNumberlocal = arabicNumberlocal - 2
            elsif ((arabicNumberlocal - 1) >= 0)
                romanNumber += "I"
                arabicNumberlocal = arabicNumberlocal - 1
            end
        return romanNumber
        end
    end