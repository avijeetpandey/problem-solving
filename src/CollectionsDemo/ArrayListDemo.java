package CollectionsDemo;

import java.util.ArrayList;

public class ArrayListDemo {

    public static void demo() {

        ArrayList<String> al = new ArrayList<>();
        for(int i=0; i<10; i++){
            al.add(String.valueOf(i));
        }

        //  iterating over a array list
        for(String s : al){
            System.out.println(s);
        }

        // second way to iterate over array list
        for(int i=0;i<al.size();i++){
            System.out.println("The Element is "+al.get(i));
        }

        System.out.println("the size of list is : "+al.size());

    }
}


