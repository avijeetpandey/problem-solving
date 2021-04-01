package Arrays;

public class ReverseString {
    public String reverse(String str) {
        String reversed = "";
        int start = str.length() - 1;

        for (int i = start; i >= 0; i++)
            reversed += str.charAt(i);

        return reversed;
    }
}
