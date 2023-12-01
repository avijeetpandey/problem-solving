package leetcode;

import java.util.HashMap;
import java.util.Map;

public class FindDuplicates {
    public static int findDuplicateBruteForce(int[] nums) {
        HashMap<Integer,Integer> map = new HashMap<Integer,Integer>();

        for(int i: nums) {
            map.put(i, map.getOrDefault(i,0)+1);
        }

        for(Map.Entry<Integer, Integer> entry: map.entrySet()) {
            if(entry.getValue() > 1) {
                return entry.getKey();
            }
        };

        System.gc();
        return 0;
    }
}
