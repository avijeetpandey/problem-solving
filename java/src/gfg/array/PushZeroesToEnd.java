package gfg.array;

import java.util.Arrays;

public class PushZeroesToEnd {
    public static void pushZeroesToEnd(int[] arr) {
        int len = arr.length;
        int zeroPosition = 0;
        int nonZeroPosition = 0;

        while (nonZeroPosition < len) {
            if(arr[nonZeroPosition] != 0) {
                int temp = arr[nonZeroPosition];
                arr[nonZeroPosition] = arr[zeroPosition];
                arr[zeroPosition] = temp;
                nonZeroPosition++;
                zeroPosition++;
            } else {
                nonZeroPosition++;
            }
        }
    }

    public static void main(String[] args) {
        int[] arr = {3,5,0,0,4};
        pushZeroesToEnd(arr);
    }
}
