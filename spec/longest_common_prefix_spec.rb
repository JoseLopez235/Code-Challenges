require './lib/longest_common_prefix_challenge'

describe 'Longest Common prefix challenge' do
  it 'should return "fl" from the output' do
    strs = ["flower","flow","flight"]

    result = longest_common_prefix(strs)

    expect(result).to eq("fl")
  end

  it 'should return an empty string if no common prefix was found' do
    strs = ["dog","racecar","car"]

    result = longest_common_prefix(strs)

    expect(result).to eq("")
  end
end