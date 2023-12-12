## Data structures implementation and Time complexity analysis :tada: :rocket:

### Stack

Stack is an abstract data type , that follows LIFE structure ( last in first out) , also while implementing the stack, the underlying data structure can be linkedlist or array.

Stack supports the following major operations

- `push O(1)` - this adds the element to the stack
- `pop O(1)` - removes the top most element from the stack
- `peek O(1)` - returns the top most element of the stack

### Queue

Queue is an abstract data type , that follows FIFO structure ( first in first out), also while implementing queue, underlying data structure can be array or linkedlist

Queue supports the following major operations

- `enqueue O(1)` - this adds the element to the queue
- `dequeue O(1)` - removes the top most element from the queue
- `peek O(1)` - returns the top most element of the queue

### Binary Tree

A binary tree is a non linear data structure, which has the following properties

- The left subtree of a node contains only nodes with keys lesser than the node’s key.
- The right subtree of a node contains only nodes with keys greater than the node’s key.
- The left and right subtree each must also be a binary search tree.

this property is called **BST** property of the tree , which makes insertion , deletion and searching efficient in a binary tree
