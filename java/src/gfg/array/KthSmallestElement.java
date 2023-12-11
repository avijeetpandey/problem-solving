package gfg.array;

import java.util.Arrays;

public class KthSmallestElement {
    public static int kthSmallestElement(int[] arr, int k) {
        // sort the array
        Arrays.sort(arr);
        return arr[k - 1];
    }
}
