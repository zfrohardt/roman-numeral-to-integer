require 'pry'

def numeral_val(n)
    numerals = {
        "I" => 1,
        "V" => 5,
        "X" => 10,
        "L" => 50,
        "C" => 100,
        "D" => 500,
        "M" => 1000,
    }
    return numerals[n]
end

def roman_numeral(string)
    # type your code in here
    chars = string.chars
    i = 0
    acc = 0
    while i < chars.length
        val = numeral_val(chars[i])
        if i < chars.length - 1 && val < numeral_val(chars[i + 1])
            val = -val
        end
        acc += val
        i += 1
    end
    acc
end

if __FILE__ == $PROGRAM_NAME
    puts "Expecting: 1"
    puts roman_numeral('I')

    puts

    puts "Expecting: 9"
    puts roman_numeral('IX')

    puts

    puts "Expecting: 402"
    puts roman_numeral('CDII')

    # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
