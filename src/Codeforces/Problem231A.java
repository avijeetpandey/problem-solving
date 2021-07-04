package Codeforces;

import java.util.Scanner;

public class Problem231A {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int testCases = scan.nextInt();
        int count = 0;
        while(testCases-- >0){
            int a = scan.nextInt();
            int b = scan.nextInt();
            int c = scan.nextInt();

            if(a+b+c >=2) count++;
        }
        System.out.println(count);
        scan.close();
    }
}
