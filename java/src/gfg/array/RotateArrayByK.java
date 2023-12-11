package gfg.array;

import java.util.ArrayList;
import java.util.Arrays;

public class RotateArrayByK {
    public static void rotate(int[] arr,int k) {
        int[] temp = new int[arr.length];

        for(int i = 0; i < arr.length; i++) {
            temp[(i + k) % arr.length] = arr[i];
        }

        for(int i = 0; i < arr.length; i++) {
            arr[i] = temp[i];
        }
    }

    public static void main(String[] args) {
        int[] arr = {1,2,3,4,5,6};
        rotate(arr,1);
        System.out.println(Arrays.toString(arr));
    }
}
