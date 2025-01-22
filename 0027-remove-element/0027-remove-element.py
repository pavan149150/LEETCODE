class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        L = 0
        for r in range(len(nums)):
            if nums[r] != val:
               nums[L] = nums[r]
               L += 1
        return L 
               
