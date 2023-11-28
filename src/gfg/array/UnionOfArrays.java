package gfg.array;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class UnionOfArrays {
    public static int doUnion(int[] array1, int[] array2) {
        Set<Integer> set = new HashSet<>();

        for(int i : array1) {
            set.add(i);
        }

        for(int i : array2) {
            set.add(i);
        }

        return set.size();
    }

    public static void main(String[] args) {
        int[] array1 = {1,2,3,4,5};
        int[] array2 = {1,2,3};

        int result = doUnion(array1, array2);
        System.out.println(result);
    }
}
