=begin
  Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

  Symbol       Value
  I             1
  V             5
  X             10
  L             50
  C             100
  D             500
  M             1000
  For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

  Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

  I can be placed before V (5) and X (10) to make 4 and 9. 
  X can be placed before L (50) and C (100) to make 40 and 90. 
  C can be placed before D (500) and M (1000) to make 400 and 900.
  Given a roman numeral, convert it to an integer.

  Example 1:

  Input: s = "III"
  Output: 3
=end

def roman_to_integer(roman_numerals)
  roman_numerals = roman_numerals.upcase
  roman_info = {
    'I' => 1,
    'IV' => 4,
    'V' => 5,
    'IX' => 9,
    'X' => 10,
    'XL' => 40,
    'L' => 50,
    'XC' => 90,
    'C' => 100,
    'CD' => 400,
    'D' => 500,
    'CM' => 900,
    'M' => 1000
  }
  total = 0
  until roman_numerals.empty? do
    numeral = roman_numerals[0]
    if numeral == 'I' && (roman_numerals[1] == 'V' || roman_numerals[1] == 'X')
      numeral = numeral + roman_numerals[1]
      total += roman_info[numeral]
      roman_numerals.slice!(0..1)

    elsif numeral == 'X' && (roman_numerals[1] == 'L' || roman_numerals[1] == 'C')
      numeral = numeral + roman_numerals[1]
      total += roman_info[numeral]
      roman_numerals.slice!(0..1)

    elsif numeral == 'C' && (roman_numerals[1] == 'D' || roman_numerals[1] == 'M')
      numeral = numeral + roman_numerals[1]
      total += roman_info[numeral]
      roman_numerals.slice!(0..1)
      
    else
      total += roman_info[numeral]
      roman_numerals.slice!(0)
    end
  end
  total
end