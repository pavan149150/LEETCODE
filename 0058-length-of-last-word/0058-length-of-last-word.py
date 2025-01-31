class Solution:
    def lengthOfLastWord(self, s: str) -> int:

        i, length = len(s) - 1, 0  
        #i is pointer , starting from the last word - 1, 0
        while s[i] == " ":
        #making sure pointer == found space
            i -= 1
        #decrementing the pointer so it will move backwards 2string
        while i >= 0 and s[i] != " ":
        #pointer has atleast 1 letter and pointer no space exist
            length += 1
        #increament the lenght
            i -= 1 
        #making sure dont make it infinite loop
        return length
        #return resutl lenght

             
            

