=begin
INSTRUCTION:
Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in an array like so: [index1, index2].
    For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

    The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

    Based on: http://oj.leetcode.com/problems/two-sum/
=end

=begin
SAMPLES:
Test.assert_equals(two_sum([1, 2, 3], 4).sort, [0, 2])
Test.assert_equals(two_sum([1234, 5678, 9012], 14690).sort, [1, 2])
Test.assert_equals(two_sum([2, 2, 3], 4).sort, [0, 1])
=end

def two_sum(numbers, target)
  arr = []
  (0..numbers.length-1).each{ |i|
    (0..numbers.length-1).each { |j|
      if numbers[i]+numbers[j] == target
        arr.push(i)
        arr.push(j)
        return arr.to_s
      end
    }
  }
end


num = [1,5,6,3,3]
tar = 11
puts two_sum(num,tar)
