class Solution(object):
    def longestCommonPrefix(self, strs):
        """
        :type strs: List[str]
        :rtype: str
        """

        result = ""
        for i in range(len(strs[0])):
            prefix = strs[0][:i+1]
            correct_prefix = [1 for word in strs if word.find(prefix) == 0]
            if sum(correct_prefix) == len(strs):
                result = prefix
        
        return result