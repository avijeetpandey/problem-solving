package gfg.strings;

public class PalindromeString {

    static boolean isPalindrome(String str) {
        StringBuilder strReversed = new StringBuilder(str);
        strReversed.reverse();

        return str.contentEquals(strReversed);
    }
    public static void main(String[] args) {
        String str = "aba";
        boolean response = isPalindrome(str);
        System.out.println(response);
    }
}
