class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
         # Traverse the array from the end to the beginning
         value = 0 
         for i in digits:
            value = value * 10 + i
         value += 1
         return [int(d) for d in str(value)]