package gfg.recursion;

public class Fibonacci {
    static int calculate(int n) {
        if(n==0) return 0;
        if(n==1) return 1;
        return calculate(n-1) + calculate(n-2);
    }

    public static void main(String[] args) {
        int result = calculate(10);
        System.out.println(result);
    }
}
