package gfg.array;

import java.util.HashSet;

public class SubArrayWithZeroSum {
    public static boolean subArrayWithZeroSum(int[] arr) {
        HashSet<Integer> set = new HashSet<Integer>();
        int currentSum = 0;

        // traverse the array and check if sum is zero or the set contains the sum or the current element is zero
        for(int i: arr) {
            currentSum += i;

            if(currentSum == 0 || set.contains(currentSum) || i == 0) {
                return true;
            } else {
                set.add(currentSum);
            }
        }

        return false;
    }

    public static void main(String[] args) {
        int[] arr = {4,2,-3,1,6};
        boolean result = subArrayWithZeroSum(arr);
        System.out.println(result);
    }
}
