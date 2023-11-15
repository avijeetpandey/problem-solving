package gfg.recursion;

public class Print1toN {
    static void print(int n) {
        if(n==0){
            return;
        }
        print(n-1);
        System.out.println(n);
    }

    public static void main(String[] args){
        print(5);
    }
}
