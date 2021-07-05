package Codeforces;

import java.util.ArrayList;
import java.util.Scanner;

public class Problem158A {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();
        int k = scan.nextInt();

        ArrayList<Integer> nums = new ArrayList<>();
        
        while(n-- > 0){
            int x = scan.nextInt();
            nums.add(x);
        }

        int count = 0;
        int comparatorsScore = nums.get(k-1);

        for(Integer x: nums) if (x >= comparatorsScore && x>0) count++;

        System.out.println(count);
        
        scan.close();
    }
}
