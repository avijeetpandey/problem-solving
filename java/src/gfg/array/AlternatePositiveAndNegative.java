package gfg.array;

import java.util.ArrayList;
import java.util.Arrays;

public class AlternatePositiveAndNegative {
    public static void arrange(int[] arr) {
        ArrayList<Integer> positiveList = new ArrayList<>();
        ArrayList<Integer> negativeList = new ArrayList<>();

        for(int i = 0; i < arr.length ; i++) {
            if(arr[i] >= 0) {
                positiveList.add(arr[i]);
            } else {
                negativeList.add(arr[i]);
            }
        }

        int i=0,j=0,k=0;

        while(i< positiveList.size() && j< negativeList.size()) {
            arr[k++] = positiveList.get(i++);
            arr[k++] = negativeList.get(j++);
        }

        while(i< positiveList.size()) {
            arr[k++] = positiveList.get(i++);
        }

        while(j < negativeList.size()) {
            arr[k++] = negativeList.get(j++);
        }
    }

    public static void main(String[] args) {
        int[] arr =  {9, 4, -2, -1, 5, 0, -5, -3, 2};
        arrange(arr);
        System.out.println(Arrays.toString(arr));
    }
}
