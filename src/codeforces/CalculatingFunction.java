package codeforces;

import java.util.Scanner;

public class CalculatingFunction {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        long number = scan.nextLong();
        long sum = 0;

        if(number%2==0) {
            sum = number/2;
        } else {
            sum = -(number+1)/2;
        }

        System.out.println(sum);
    }
}
