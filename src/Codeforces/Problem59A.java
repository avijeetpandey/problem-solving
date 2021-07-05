package Codeforces;

import java.util.Scanner;

public class Problem59A {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String word = scan.nextLine();
        int lowerCount = 0;
        int upperCount = 0;

        for (int i = 0; i < word.length(); i++) {
            if (Character.isUpperCase(word.charAt(i))) {
                upperCount++;
            } else lowerCount++;
        }

        if (lowerCount > upperCount) {
            System.out.println(word.toLowerCase());
        } else if (upperCount > lowerCount) {
            System.out.println(word.toUpperCase());
        } else System.out.println(word.toLowerCase());

        scan.close();
    }
}
