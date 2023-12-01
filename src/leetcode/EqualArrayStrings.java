package leetcode;

public class EqualArrayStrings {
    public static void main(String[] args) {
        String[] one = {"A", "BBBC", "C"};
        String[] two = {"ABBB", "C", "C"};

        String oneWord = "";
        String twoWord = "";

        for(String s : one) oneWord += s;
        for(String s : two) twoWord += s;

        System.out.println(oneWord.equals(twoWord));
    }
}
