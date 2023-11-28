package gfg.array;

import java.util.Arrays;

/**
 * You are given an array arr[] of N integers.
 * The task is to find the smallest positive number missing from the array.
 * Input:
 * N = 5
 * arr[] = {1,2,3,4,5}
 * Output: 6
 * Explanation: Smallest positive missing number is 6.
 */
public class SmallestPositiveMissing {
    public static void main(String[] args) {
        int[] arr = {0,-10,1,3,-20};
        int k = 1;

        // sort the array first
        Arrays.sort(arr);

        for (int j : arr) {
            if (j == k) {
                k++;
            }
        }

        System.out.println(k);
    }
}
