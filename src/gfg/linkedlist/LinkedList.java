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

    public void insertAtTheBeginning(Node node) {

        if(this.head == null) {
            head = node;
            return;
        }
        node.next = head;
        this.head = node;
    }

    public void insertAtPosition(Node node,int position) {
        if(position==1) {
            node.next = head;
            head = node;
        }

        Node current = head;

        for(int i=0;i<=position-2 && current !=null;i++) {
            current = current.next;
        }

        if(current==null) {
            return;
        }
        node.next = current.next;
        current.next = node;
    }

    public void deleteHeadOfLinkedList() {
       head = head.next;
    }
}