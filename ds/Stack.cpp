#include <iostream>
using namespace std;

class Stack
{
public:
    int *arr;
    int size;
    int top;

    Stack(int size)
    {
        this->size = size;
        arr = new int[size];
        top = -1;
    }

    /**
     * pushing into the stack
     */
    void push(int element)
    {
        if (size - top > 0)
        {
            top++;
            arr[top] = element;
        }
        else
        {
            cout << "Stack overflow" << endl;
        }
    }

    /**
     * Popping from the stack
     */
    void pop()
    {
        if (top >= 0)
        {
            top--;
        }
        else
        {
            cout << "Stack undeflow" << endl;
        }
    }

    /**
     * Peeking into the stack
     */
    int peek()
    {
        if (isEmpty())
        {
            return -1;
        }
        else
        {
            return arr[top];
        }
    }

    bool isEmpty()
    {
        if (top == -1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
};

// Driver code
int main()
{
    Stack st(10);
    st.push(1);
    st.push(2);
    st.push(3);

    cout << st.peek() << endl;

    st.pop();

    cout << st.peek() << endl;

    return 0;
}