package gfg.strings;

/**
 * I/o - geeksforgeeks
 * O/p - e - 4
 *       f - 1
 *       g -2
 *       k - 2
 *       etc
 *  Also all the characters are lower case
 */

class FrequencyOfEachWordInString {
    public static void main(String[] args) {
        String sampleString = "geeksforgeeks";
        int[] count = new int[26];
        for(int i=0;i<sampleString.length();i++) {
            count[sampleString.charAt(i) - 'a']++;
        }

        for(int i=0;i<26;i++) {
            if(count[i]>0) {
                System.out.println((char)(i+'a')+" "+count[i]);
            }
        }
    }
}
