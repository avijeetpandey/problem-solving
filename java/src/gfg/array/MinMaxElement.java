package gfg.array;

/**
 * N = 6
 * A[] = {3, 2, 1, 56, 10000, 167}
 * Output: 1 10000
 * Find min and max element
 */

public class MinMaxElement {
    static long[] getMinMax(long arr[], long n)
    {
        long min = Integer.MAX_VALUE;
        long max = Integer.MIN_VALUE;

        for(int i=0; i< arr.length; i++) {
            long current = arr[i];
            min = Math.min(min, current);
            max = Math.max(max, current);
        }

        return new long[]{min, max};
    }
}
