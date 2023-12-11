package codeforces;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class MediumNumber {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int times = scan.nextInt();

        while(times > 0 ) {
            int a = scan.nextInt();
            int b = scan.nextInt();
            int c = scan.nextInt();

            ArrayList<Integer> list = new ArrayList<Integer>();
            list.add(a);
            list.add(b);
            list.add(c);

            Collections.sort(list);

            System.out.println(list.get(1));

            times--;
        }
    }
}
