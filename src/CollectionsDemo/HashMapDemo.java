package CollectionsDemo;

import com.sun.tools.javac.util.List;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class HashMapDemo {
    public static void main(String[] args) {
        HashMap<Integer,String> map = new HashMap<>();

        // array containing the numbers
        ArrayList<String> numbers = new ArrayList<>(List.of("One","Two","Three","Four","Five","Six","Seven","Eight"));

        // inserting into hashmap
        for(int i=0;i<numbers.size();i++){
            map.put(i,numbers.get(i));
        }

        // traversing the hashmap
        for(Map.Entry<Integer,String> entry: map.entrySet()){
            Integer key = entry.getKey();
            String value = entry.getValue();
            System.out.println("The Key and values are : "+key+" "+value);
        }

        // size of the hashmap is
        System.out.println("The size of the hashmap is : "+map.size());
    }
}
