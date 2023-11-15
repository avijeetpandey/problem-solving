package gfg.recursion;

public class SumOfDigitsRecursive {
    static int sum(int n) {
        if(n==0){
            return 0;
        }
        int remainingNumber = n/10;
        return n%10 + sum(remainingNumber);
    }

    public static void main(String[] args) {
        int res = sum(123);
        System.out.println(res);
    }
}
