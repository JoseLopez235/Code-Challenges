require './lib/valid_parentheses_challenge'

describe 'Vaild Parentheses' do
  it 'should return true' do
    s = "()"
    result = is_valid(s)

    expect(result).to eq (true)
  end

  it 'should return true' do
    s = "()[]{}"
    result = is_valid(s)

    expect(result).to eq (true)
  end

  it 'should return false' do
    s = "([)]"
    result = is_valid(s)

    expect(result).to eq (false)
  end

  it 'should return true' do
    s = "{[]}"
    result = is_valid(s)

    expect(result).to eq (true)
  end
end