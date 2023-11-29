package codeforces;

import java.util.*;

public class Triple {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int times = scan.nextInt();

        while(times > 0) {

            long value = -1;

            int n = scan.nextInt();

            ArrayList<Integer> list = new ArrayList<>();

            for(int i = 0; i < n; i++) {
                list.add(scan.nextInt());
            }

            HashMap<Integer, Integer> map = new HashMap<>();

            for(int i: list) {
                map.put(i, map.getOrDefault(i, 0) + 1);
            }

            for(Map.Entry<Integer, Integer> entry: map.entrySet()) {
                if(entry.getValue() >= 3) {
                    value = entry.getKey();
                    break;
                }
            }

            System.out.println(value);

            times--;
        }
    }
}
