package codeforces;

import java.util.Scanner;

/**
 * Sample input
 * 3 7
 * 4 5 14
 */

public class VanyaAndFence {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int times = scan.nextInt();
        int totalFriends = times;
        int height = scan.nextInt();

        int heightExceedingCount = 0;

        while (times>0) {
            int friendHeight = scan.nextInt();
            if(friendHeight>height) {
                heightExceedingCount++;
            }
            times--;
        }

        int totalWidth = 2*(heightExceedingCount) + (totalFriends-heightExceedingCount);
        System.out.println(totalWidth);
    }
}
