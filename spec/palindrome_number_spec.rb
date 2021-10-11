require './lib/palindrome_number_challenge'

describe 'Palindrome number challenge' do
  it 'should return true' do
    num = 121

    result = is_palindrome(num)

    expect(result).to eq(true)
  end

  it 'should return false' do
    num = 125

    result = is_palindrome(num)

    expect(result).to eq(false)
  end
end