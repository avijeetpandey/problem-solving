# Implementation of queue abstract data structure type
# Queue follows FIFO - first in first out structure

class Queue:

    def __init__(self):
        self.queue = []

    # function to enqueue item O(1)
    def enqueue(self, data):
        self.queue.append(data)

    # function to dequeue O(1)
    def dequeue(self):
        # if the queue is already empty return -1
        if self.isEmpty():
            return -1

        data = self.queue[0]
        del self.queue[0]

        return data

    # function to peek queue element O(1)
    def peek(self):
        return self.queue[0]

    # function to check if queue is empty O(1)
    def isEmpty(self):
        return self.queue == []
