import ds.LinkedList;

public class Main {
    public static void main(String[] args) {
        LinkedList.Node head = new LinkedList.Node(10);
        LinkedList list = new LinkedList(head);
        list.insertToEnd(new LinkedList.Node(11));
        list.insertToEnd(new LinkedList.Node(12));
        list.insertToEnd(new LinkedList.Node(13));
        list.printList();
        LinkedList.Node reversedHead = list.reverseLinkedList();
        System.out.println("============");
        list.printListWithNode(reversedHead);
    }
}