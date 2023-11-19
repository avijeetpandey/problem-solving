package collections;

import java.util.ArrayList;

public class CollectionsExample {
    public static void main(String[] args) {
        // defining array list
        ArrayList<Integer> list = new ArrayList<>();

        // inserting into array list
        list.add(21);
        list.add(22);
        list.add(23);

        // iterating on array list using enhanced for loop
        for(int i: list) {
            System.out.println(i);
        }

        // iterating on array using for standard for loop
        for(int i=0;i<list.size();i++) {
            System.out.println(list.get(i));
        }
    }
}
