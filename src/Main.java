import gfg.linkedlist.LinkedList;

public class Main {
    public static void main(String[] args) {
        LinkedList.Node head = new LinkedList.Node(10);

        head.next = new LinkedList.Node(11);

        LinkedList list = new LinkedList(head);
        list.insertToEnd( new LinkedList.Node(12));
        list.insertToEnd( new LinkedList.Node(13));
        list.insertToEnd( new LinkedList.Node(14));
        list.insertToEnd( new LinkedList.Node(15));
        list.insertAtPosition(new LinkedList.Node(34),4);
        list.printList();
    }
}