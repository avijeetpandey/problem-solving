package leetcode;

public class IsSubSequence {
        public boolean isSubsequence(String s, String t) {

            if (s.isEmpty()) return true;
            if (t.isEmpty()) return false;

            int j = 0;

            int firstLength = t.length();
            int secondLength = s.length();

            for (int i = 0; i < firstLength && j < secondLength; i++) {
                if (s.charAt(j) == t.charAt(i)) {
                    j++;
                }
            }

            return j == secondLength;
        }
}
