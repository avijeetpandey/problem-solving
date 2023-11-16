package gfg.linkedlist;

public class LinkedList {
    public Node head;
    public static class Node {
        public int data;
        public Node next;

        public Node(int n) {
            data = n;
            next = null;
        }
    }

    public LinkedList(Node node) {
        head = node;
    }

    public void printList() {
        Node current = head;
        while (current != null) {
            System.out.println(current.data);
            current = current.next;
        }
    }

    public void recursivePrintList(Node head) {
        if(head==null) {
            return;
        }
        System.out.println(head.data);
        recursivePrintList(head.next);
    }

    public void insertToEnd(Node node) {
        Node current = head;
        while (current.next != null) {
            current = current.next;
        }
        current.next = node;
    }
}