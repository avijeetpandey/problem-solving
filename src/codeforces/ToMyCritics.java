package codeforces;

import java.util.*;

public class ToMyCritics {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int times = scan.nextInt();

        while(times > 0) {
            int a = scan.nextInt();
            int b = scan.nextInt();
            int c = scan.nextInt();


            if((a+b+c) - Math.min(a,Math.min(b,c)) >= 10) {
                System.out.println("YES");
            } else {
                System.out.println("NO");
            }

            times--;
        }
    }
}
