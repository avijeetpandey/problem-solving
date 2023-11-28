package gfg.array;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class IntersectionOfArray {
    public static int numberOfElementsInIntersection(int[] array1, int[] array2 ) {
        Map<Integer,Integer> map = new HashMap<>();

        for(int i : array1) {
            map.put(i, map.getOrDefault(i, 0) + 1);
        }

        for(int i : array2) {
            map.put(i, map.getOrDefault(i, 0) + 1);
        }

        int count = 0;

        for(int i : map.keySet()) {
            if(map.get(i) > 1) {
                count++;
            }
        }

        return count;
    }

    public static int numberOfElementsInIntersectionWithSet(int[] array1, int[] array2 ) {
        int count = 0;
        Set<Integer> set = new HashSet<>();

        // add all elements of first array to set
        for(int i : array1) {
            set.add(i);
        }

        // check if the set contains the element if it contains increase count and remove element from set
        for(int i : array2) {
            if(set.contains(i)) {
                count++;
                set.remove(i);
            }
        }

        return count;

    }

    public static void main(String[] args) {
        int[] array1 = {1, 2, 3, 4, 5, 6};
        int[] array2 =  {3, 4, 5, 6, 7};

        int result = numberOfElementsInIntersectionWithSet(array1, array2);
        System.out.println(result);
    }
}
