package codeforces;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class NewYearFriend {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        ArrayList<Integer> list = new ArrayList<Integer>();
        int time = 3;

        while(time > 0) {
            int number = scan.nextInt();
            list.add(number);
            time--;
        }

        Collections.sort(list);

        System.out.println(list.getLast() - list.getFirst());
    }
}
