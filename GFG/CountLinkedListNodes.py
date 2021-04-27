'''
#Linked list class
class LinkedList:
    def __init__(self):
        self.head=None
        self.tail=None
'''


class Solution:
    # Function to count nodes of a linked list.
    def getCount(self, head_node):
        count = 0
        temp = head_node
        while(temp):
            count += 1
            temp = temp.next
        return count
