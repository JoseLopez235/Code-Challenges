require './lib/roman_to_integer_challenge'

describe 'Roman to Integer Challenge' do
  it 'should return 3' do
    roman = 'III'

    result = roman_to_integer(roman)

    expect(result).to eq(3)
  end

  it 'should return 4' do
    roman = 'IV'

    result = roman_to_integer(roman)

    expect(result).to eq(4)
  end

  it 'should return 9' do
    roman = 'IX'

    result = roman_to_integer(roman)

    expect(result).to eq(9)
  end

  it 'should return 58' do
    roman = 'LVIII'

    result = roman_to_integer(roman)

    expect(result).to eq(58)
  end

  it 'should return 1994' do
    roman = 'MCMXCIV'

    result = roman_to_integer(roman)

    expect(result).to eq(1994)
  end
end