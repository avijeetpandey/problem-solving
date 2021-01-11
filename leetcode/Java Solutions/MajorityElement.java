import java.util.HashMap;
import java.util.Map;

public class MajorityElement {
    public int majorityElement(int[] nums) {
        int majority = nums.length / 2;
        Map<Integer, Integer> m = new HashMap<Integer, Integer>();

        for (int x : nums) {
            if (m.containsKey(x)) {
                m.put(x, m.get(x) + 1);
            } else {
                m.put(x, 1);
            }
        }

        for (Map.Entry<Integer, Integer> entry : m.entrySet()) {
            if (entry.getValue() > majority) {
                return entry.getKey();
            }
        }

        return 0;
    }
}