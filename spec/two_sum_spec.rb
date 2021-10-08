require './lib/two_sum_challenge'

describe 'should return an array of 2 numbers that add up to the target number' do
  it 'should return index of [0,1]' do
    nums = [2,7,11,15]
    target = 9

    results = two_sum(nums, target)

    expect(results).to include(0)
    expect(results).to include(1)
  end

  it 'should return index of [2,6]' do
    nums = [2,7,11,15,7,5,3]
    target = 14

    results = two_sum(nums, target)

    expect(results).to include(2)
    expect(results).to include(6)
  end
end