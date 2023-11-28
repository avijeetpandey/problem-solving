package gfg.array;

import java.util.ArrayList;
import java.util.Arrays;

public class MoveNegativeElementsToEnd {
    public static void moveNegativeToEnd(int[]arr) {
        ArrayList<Integer> postiveList = new ArrayList<Integer>();
        ArrayList<Integer> negativeList = new ArrayList<Integer>();

        for (int i : arr) {
            if(i < 0) {
                negativeList.add(i);
            } else {
                postiveList.add(i);
            }
        }

        // position back the elements in the array
        int position = 0;
        for(int number: postiveList) {
            arr[position] = number;
            position++;
        }

        for(int number: negativeList) {
            arr[position] = number;
            position++;
        }
    }
    public static void main(String[] args) {
        int[] arr = {1, -1, 3, 2, -7, -5, 11, 6 };
        moveNegativeToEnd(arr);

        System.out.println(Arrays.toString(arr));
    }
}
