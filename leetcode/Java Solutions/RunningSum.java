/**
 * Given an array nums. We define a running sum of an array as runningSum[i] =
 * sum(nums[0]…nums[i]). Return the running sum of nums.
 */
public class RunningSum {
    public int[] runningSum(int[] nums) {
        int rsum = nums[0];
        for (int i = 1; i < nums.length; i++) {
            rsum += nums[i];
            nums[i] = rsum;
        }

        return nums;
    }
}
