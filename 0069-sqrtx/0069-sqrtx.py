class Solution:
    def mySqrt(self, x: int) -> int:
        L, R = 0, x
        res = 0

        while L <= R:
            m = L + (R - L) // 2  # Correct midpoint calculation
            if m**2 > x:
                R = m - 1
            elif m**2 < x:
                L = m + 1
                res = m  # Update result to the current best guess
            else:
                return m  # Exact square root found
        return res  # Return the floor of the square root