package Codeforces;

import java.util.HashSet;
import java.util.Scanner;

public class Problem236A {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String word = scan.nextLine();
        HashSet<Character> uniqueChars = new HashSet<>();

        for (int i = 0; i < word.length(); i++) {
            uniqueChars.add(word.charAt(i));
        }

        if (uniqueChars.size() % 2 == 0) {
            System.out.println("CHAT WITH HER!");
        } else {
            System.out.println("IGNORE HIM!");
        }

        scan.close();
    }
}
