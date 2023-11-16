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
        list.printList();
        System.out.println("============");
        int index = list.findPosition(13);
        System.out.println("The position of key is " + index);
    }
}