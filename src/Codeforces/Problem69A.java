package Codeforces;

import java.util.Scanner;

public class Problem69A {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int testCases = scan.nextInt();
        int xC = 0, yC = 0, zC = 0;
        while (testCases-- > 0) {
            int x = scan.nextInt();
            int y = scan.nextInt();
            int z = scan.nextInt();
            xC = xC + x;
            yC = yC + y;
            zC = zC + z;
        }
        if (xC == 0 && yC == 0 && zC == 0) {
            System.out.println("YES");
        } else {
            System.out.println("NO");
        }
    }
}
