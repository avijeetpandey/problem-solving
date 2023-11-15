import gfg.linkedlist.LinkedList;

public class Main {
    public static void main(String[] args) {
        LinkedList.Node head = new LinkedList.Node(10);
        LinkedList.Node one = new LinkedList.Node(20);
        LinkedList.Node two = new LinkedList.Node(30);

        head.next = one;
        one.next = two;

        LinkedList list = new LinkedList(head);

        list.printList();
    }
}