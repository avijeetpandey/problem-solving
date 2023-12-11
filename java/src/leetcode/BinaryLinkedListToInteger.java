package leetcode;

class BinaryLinkedListToInteger {
    public int getDecimalValue(ListNode head) {
        ListNode currentNode = head;
        StringBuilder list = new StringBuilder();
        while (currentNode != null) {
            list.append(currentNode.val);
            currentNode = currentNode.next;
        }
        return Integer.parseInt(list.toString(), 2);
    }

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
}