package leetcode;

class PalindromeLinkedList {
    static class ListNode {
        int data;
        ListNode next;

        ListNode(int d) {
            data = d;
            next = null;
        }
    }

    ListNode reverse(ListNode node) {
        ListNode current = node;
        ListNode previousNode = null;
        ListNode nextNode = null;

        while(current != null) {
            nextNode = current.next;
            current.next = previousNode;
            previousNode = current;
            current = nextNode;
        }

        return previousNode;
    }

    public boolean isPalindrome(ListNode head) {
        if(head == null) {
            return false;
        }

        // Finding the middle of the linked list
        ListNode current = head;
        ListNode fastPointer = current;
        ListNode slowPointer = current;

        while(fastPointer != null && fastPointer.next != null) {
            slowPointer = slowPointer.next;
            fastPointer = fastPointer.next.next;
        }

        ListNode reversedListTillMiddle = reverse(slowPointer);

        // comparing the lists if the list is same as the reversed part
        while(reversedListTillMiddle != null) {
            if(head.data != reversedListTillMiddle.data) {
                return false;
            }

            reversedListTillMiddle = reversedListTillMiddle.next;
        }

        return true;
    }
}
