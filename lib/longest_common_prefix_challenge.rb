=begin
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
=end

def longest_common_prefix(strs)
  return "" if strs.empty? 
  prefix = ""
  base = strs[0]
  for i in 0..base.length-1
      if strs.all?{|x| x[i] == base[i]}
          prefix += base[i]
      else
          break
      end
  end
  prefix
end