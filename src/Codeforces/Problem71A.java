package Codeforces;

import java.util.Scanner;

public class Problem71A {
    public static void main(String[] args) {
        Scanner scan = new Scanner((System.in));

        int testCases = scan.nextInt();

        while (testCases-- >= 0) {
            String in = scan.nextLine();
            if (in.length()>10){
                System.out.print(in.charAt(0));
                System.out.print(in.length() -2);
                System.out.println(in.charAt(in.length() -1));
            }else {
                System.out.println(in);
            }
        }
    }
}
