
/**
 * Given an array of integers, find if the array contains any duplicates.
 */

import java.util.Arrays;

public class HasDuplicates {
    public boolean containsDuplicate(int[] nums) {
        boolean hasDuplicate = false;
        Arrays.sort(nums);
        for (int i = 0; i < nums.length - 1; i++) {
            if (nums[i] == nums[i + 1]) {
                hasDuplicate = true;
                break;
            }
        }
        return hasDuplicate;
    }
}
