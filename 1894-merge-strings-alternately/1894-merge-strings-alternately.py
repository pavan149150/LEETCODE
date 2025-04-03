class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        i = 0 
        z = 0 
        merged = []

        while i < len(word1) and z < len(word2):
            merged.append(word1[i])
            merged.append(word2[z])

            i+=1
            z+=1
        merged.append(word1[i:])
        merged.append(word2[z:])
        return "".join(merged)