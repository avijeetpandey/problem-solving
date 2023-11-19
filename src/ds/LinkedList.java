package ds;

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

    public void deleteHead() {
       if(head == null) return;
       head = head.next;
    }

    public void deleteLastNode() {
       if(head==null) return;
       if(head.next==null) return;

       Node secondLast = head;
       while (secondLast.next.next != null) {
           secondLast = secondLast.next;
       }

       secondLast.next = null;
    }

    public int findPosition(int key) {
        if(head==null) return -1;
        int count = 0;
        Node current = head;
        while(current.next != null) {
            count++;
            if(current.data == key) {
                return count;
            }
            current = current.next;
        }
        return -1;
    }

    public Node reverseLinkedList() {
        Node current = head;
        Node prev = null;
        Node next = null;

        // iterating over the linked list and changing the references
        while(current != null) {
            next = current.next;
            current.next = prev;
            prev = current;
            current = next;
        }

        return prev;
    }

    public void printListWithNode(Node node) {
        Node current = node;
        while (current != null) {
            System.out.println(current.data);
            current = current.next;
        }
    }

    public Node middle() {
        Node current = head;
        Node fastPointer = current;
        Node slowPointer = current;

        while(fastPointer != null && fastPointer.next != null) {
            slowPointer = slowPointer.next;
            fastPointer = fastPointer.next.next;
        }

        return slowPointer;
    }
}