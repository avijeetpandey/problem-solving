package gfg.linkedlist;

class CountNodesInLinkedList {
    static class Node{
        int data;
        Node next;
        Node(int a){
            data = a;
            next = null;
        }
    }

    public static int getCount(Node head)
    {

        int count = 1;
        while(head.next != null) {
            count++;
            head = head.next;
        }

        return count;
    }
}
