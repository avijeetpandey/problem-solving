package gfg.strings;

import java.util.Arrays;

public class LengthOfLastWord {
    public static void main(String[] args) {
        String s = "   fly me   to   the moon  ";
        String[] words = s.split(" ",0);
        int len = words.length;
        System.out.println(words[len-1].length());
    }
}
