package leetcode;

class BinaryLinkedListToInteger {
    public int getDecimalValue(ListNode head) {
        ListNode currentNode = head;
        String list = "";
        while (currentNode != null) {
            list += "" + currentNode.val;
            currentNode = currentNode.next;
        }
        return Integer.parseInt(list, 2);
    }

    class ListNode {
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
}