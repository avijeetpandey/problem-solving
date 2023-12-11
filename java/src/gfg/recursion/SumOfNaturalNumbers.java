package gfg.recursion;

public class SumOfNaturalNumbers {
    static int calculate(int n) {
        if(n==0) return 0;
        if(n==1) return 1;
        return n + calculate(n-1);
    }

    public static void main(String[] args) {
        int result = calculate(4);
        System.out.println(result);
    }
}
