package leetcode;

class MiddleOfLinkedListNaive {
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

    ListNode middleOfList() {
        ListNode current = head;
        int count = 0;
        while(current!=null){
            count++;
            current = current.next;
        }

        // reset the head
        current = head;

        // iterate to half count of the linked list
        for(int i=0;i<count/2;i++){
            current = current.next;
        }

        return current;
    }
}
