package gfg.recursion;

public class PalindromeRecursive {
    static boolean check(String str, int start, int end) {
        if(start>=end) {
            return true;
        }
        return str.charAt(start) == str.charAt(end) && check(str,start+1,end-1);
    }

    public static void main(String[] args) {
        boolean result = check("abac",0,"abac".length()-1);
        System.out.println(result);
    }
}
