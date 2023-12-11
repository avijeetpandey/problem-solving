package gfg.strings;

public class StringSubsequence {
    static boolean isSubSeqenceOfString(String firstString,String secondString) {
        int firstStringLength = firstString.length();
        int secondStringLength = secondString.length();

        int j = 0;
        for(int i=0; i < firstStringLength && j < secondStringLength; i++) {
            if(firstString.charAt(i) == secondString.charAt(j)) {
                j++;
            }
        }

        return j == secondStringLength;
    }
    public static void main(String[] args) {
        String firstString = "ABCD";
        String secondString = "AD";
        System.out.println(isSubSeqenceOfString(firstString,secondString));
    }
}
