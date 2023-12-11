package codeforces;

import java.util.Scanner;

/**
 * if the last digit of the number is non-zero, she decreases the number by one;
 * if the last digit of the number is zero,
 * she divides the number by 10 (i.e. removes the last digit).
 */

public class WrongSubtraction {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int initialNumber = scan.nextInt();
        int times = scan.nextInt();

        for(int i=1;i<=times;i++) {
            int lastDigit = initialNumber % 10;
            if(lastDigit==0) {
                initialNumber/=10;
            }else if(lastDigit > 0) {
                initialNumber--;
            }
        }

        System.out.println(initialNumber);
    }
}
