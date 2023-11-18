package codeforces;

import java.util.Scanner;

public class SoildersAndBananas {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int costOfFirstBanana = scan.nextInt();
        int initialMoney = scan.nextInt();
        int numberOfBananas = scan.nextInt();

        int totalMoneyNeeded = (costOfFirstBanana*numberOfBananas*(numberOfBananas+1))/2;
        int moneyNeeded = totalMoneyNeeded-initialMoney;
        System.out.println(Math.max(moneyNeeded, 0));
    }
}
