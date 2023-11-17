package leetcode;

public class ReverseLinkedListOptimised {
    ListNode head;
    static class ListNode {
        int val;
        ListNode next;

        ListNode() {
        }

        ListNode(int val) {
            this.val = val;
        }

        ListNode(int val, ListNode next) {
            this.val = val;
            this.next = next;
        }
    }

    ListNode middleOfLinkedList() {
        if(head==null) return null;
        ListNode slow = head;
        ListNode fast = head;
        while(fast!=null && fast.next != null) {
            slow = slow.next;
            fast = fast.next.next;
        }
        return slow;
    }
}
