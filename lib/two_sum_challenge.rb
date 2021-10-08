=begin 
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

Example:
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].
=end


def two_sum(nums, target)
    nums.each_with_index do |primary_num, primary_index|
      nums.each_with_index do |secondary_num, secondary_index|
        if primary_index != secondary_index && (primary_num + secondary_num) == target 
          return [primary_index, secondary_index]
        end
      end
    end
end
