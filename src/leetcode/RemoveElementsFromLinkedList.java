package leetcode;

class RemoveElementsFromLinkedList {
    static class ListNode {
        int data;
        ListNode next;

        ListNode(int x) {
            data = x;
            next = null;
        }
    }

    ListNode removeElements(ListNode head,int value) {
        if(head == null) return null;

        // appending a node to the previous of head node
        // just to keep track of the node and handling the case if the node is the target value to be removed.
        ListNode dummyNode = new ListNode(-1);
        dummyNode.next = head;

        // creating a tail pointer that will go ahead and remove the links
        ListNode tailPointer = dummyNode;

        while(tailPointer.next != null) {
            if(tailPointer.next.data == value) {
                tailPointer.next = tailPointer.next.next;
            } else {
                tailPointer = tailPointer.next;
            }
        }

        return dummyNode.next;
     }
}
