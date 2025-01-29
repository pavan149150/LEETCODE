class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        L = 0
        R = len(nums) - 1

        while L <= R:
            mid = (L + R) // 2
            mid_value = nums[mid]
            if mid_value == target:
                return mid
            elif mid_value < target:
                L = mid + 1
            else:
                R = mid - 1
        return L
