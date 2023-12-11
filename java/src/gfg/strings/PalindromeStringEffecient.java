package gfg.strings;

public class PalindromeStringEffecient {

    static boolean isPalindrome(String string) {
        if(string.isEmpty()) return true;

        int start = 0;
        int end = string.length() - 1;

        while(start < end) {
            if(string.charAt(start) != string.charAt(end)) {
                return false;
            }

            start++;
            end--;
        }

        return true;
    }
    public static void main(String[] args) {
        String str = "ABCCBA";
        System.out.println(isPalindrome(str));
    }
}
