package leetcode;

public class MaxSubArraySum {
    public int maxSubArray(int[] nums) {
        int currentSum = 0;
        int maxSum = nums[0];

        for(int i=0;i< nums.length; i++) {
            currentSum += nums[i];
            maxSum = Math.max(currentSum,maxSum);

            if(currentSum<0) {
                currentSum = 0;
            }
        }

        return maxSum;
    }
}
