from typing import List

class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        runningSum = 0
        for i in range(0,len(nums)):
            runningSum = runningSum + nums[i]
            nums[i] = runningSum
        return nums