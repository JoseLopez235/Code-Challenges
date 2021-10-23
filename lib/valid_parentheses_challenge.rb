=begin 
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.

Example 1:

Input: s = "()"
Output: true

Example 2:

Input: s = "(]"
Output: false
=end

def is_valid(s)
  stack = []  
  (0...s.length).each do |i|
    current = s[i]      
    if current == '}'   
          ele = stack.pop
          return false if ele != '{'   
      elsif current == ')'   
          ele = stack.pop   
          return false if ele != '(' 
      elsif current == ']'
          ele = stack.pop
          return false if ele != '['
      else
          stack.push(current) 
      end
  end
  stack.empty? ? true : false 
end
