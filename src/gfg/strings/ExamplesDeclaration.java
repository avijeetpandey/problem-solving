package gfg.strings;

public class ExamplesDeclaration {
    public static void main(String[] args) {
        // Normal string
        String str = new String("Normal String");

        // Thread safe string buffer
        StringBuffer strBuffer = new StringBuffer("Buffer string");

        // Single threaded mutable using builder
        StringBuilder strBuilder = new StringBuilder("String builder");

        System.out.println(str);
        System.out.println(strBuffer);
        System.out.println(strBuilder);
    }
}
