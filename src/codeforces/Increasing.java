package codeforces;

import java.util.*;

public class Increasing {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int times = scan.nextInt();

        while(times > 0) {
            boolean canDo = true;
            int numberOfElements = scan.nextInt();

            ArrayList<Integer> list = new ArrayList<Integer>();

            while(numberOfElements > 0) {
                list.add(scan.nextInt());
                numberOfElements--;
            }

            Collections.sort(list);

            for(int i=0;i < list.size() -1 ;i++) {
                if(list.get(i) >= list.get(i+1)) {
                   canDo = false;
                   break;
                }
            }


            if(canDo) {
                System.out.println("YES");
            } else {
                System.out.println("NO");
            }

            times--;
        }
    }
}
