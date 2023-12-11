package gfg.array;

import java.lang.reflect.Array;
import java.util.Arrays;

/**
 * Given an array of size N, find the number of distinct pairs {i, j} (i != j)
 * in the array such that the sum of a[i] and a[j] is greater than 0.
 * Example 1:
 * Input: N = 3, a[] = {3, -2, 1}
 * Output: 2
 * Explanation: {3, -2}, {3, 1} are two
 * possible pairs.
 */
public class ValidPairSum {

    static void validPairBruteForce(int[] arr) {
        int count = 0;

        for(int i = 0; i < arr.length-1; i++) {
            for(int j = i + 1; j < arr.length; j++) {
                if(arr[i] + arr[j] > 0) {
                    count++;
                }
            }
        }

        System.out.println(count);
    }

    static long validPairOptimised(int arr[], int n)
    {
        long count = 0;

        Arrays.sort(arr);

        int start = 0;
        int end = n - 1;

        while(start < end) {
            if(arr[start] + arr[end] > 0) {
                count += end - start;
                end--;
            } else {
                start++;
            }
        }

        return count;
    }
}
