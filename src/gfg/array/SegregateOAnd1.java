package gfg.array;

/**
 * Given an array of length N consisting of only 0s and 1s in random order.
 * Modify the array to segregate 0s on left side and 1s on the right side of the array.
 * Example 1:
 * Input:
 * N = 5
 * arr[] = {0, 0, 1, 1, 0}
 * Output: 0 0 0 1 1
 */

public class SegregateOAnd1 {
    void segregate0and1(int[] arr, int n) {
        int one = 0, zero = 0;
        for(int i: arr) {
            if(i==0) {
                zero++;
            } else {
                one++;
            }
        }

        for(int i=0;i<n;i++) {
            if(zero > 0) {
                arr[i] = 0;
                zero--;
            } else {
                arr[i] = 1;
                one--;
            }
        }
    }
}
