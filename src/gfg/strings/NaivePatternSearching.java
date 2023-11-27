package gfg.strings;

public class NaivePatternSearching {
    static void searchPattern(String txt, String pattern) {
        int n = txt.length();
        int m = pattern.length();

        for(int i = 0; i<= (n-m); i++) {
            int j;
            for(j=0;j<m; j++) {
                if(pattern.charAt(j) != txt.charAt(i+j)) {
                    break;
                }
            }

            if(j==m) {
                System.out.println(i+"");
            }
        }
    }

    public static void main(String[] args) {
        searchPattern("ABABABCD","ABAB");
    }
}
