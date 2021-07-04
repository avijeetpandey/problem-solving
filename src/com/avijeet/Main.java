package com.avijeet;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int number = scan.nextInt();

        if (number % 2 == 0 && number > 2) {
            System.out.println("YES");
        } else {
            System.out.println("NO");
        }

        scan.close();
    }
}
