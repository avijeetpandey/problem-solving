package gfg.array;

import java.util.Arrays;

public class SortZeroesAndOnes {
    public static void main(String[] args) {
        int arr[] = {0,2,1,2,0};
        int one = 0, two = 0, zero = 0;

        for(int i : arr) {
            if(i == 0) zero++;
            if(i == 1) one++;
            if(i == 2) two++;
        }

        // re traverse the array and shift the elements
        for(int i = 0; i < arr.length; i++) {
            if(zero > 0) {
                arr[i] = 0;
                zero--;
            } else if (one > 0) {
                arr[i] = 1;
                one--;
            } else {
                arr[i] = 2;
                two--;
            }
        }

        System.out.println(Arrays.toString(arr));
    }
}
