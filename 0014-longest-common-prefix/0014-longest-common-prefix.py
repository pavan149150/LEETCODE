class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        min_length = float('inf')
        for s in strs:
            if len(s) < min_length:
                min_length = len(s)
        #This above code snipet is to find the min_length of string 
        i = 0 
        while i < min_length:
             # 0 < 4 (flow). so TRUE
            for s in strs: 
                # s will be "flower" in 1st iterete and "flow" and "flight"
                if s[i] != strs[0][i]:
                    # "f" not equal to "f" 
                    return s[:i] 
            i += 1 # in the loop 1 < 4 , 2< 4, 3<4, 4<4 then fail
        return s[:i]
