## Stack and Heap memory in javascript :tada: :rocket:

**Stack Memory**
All primitive data types are stored in stack memory, what ever value you create from an existing value , you get copy of it and if you change the copied value , the original one remains unchanged

**Heap Memory**
All non primitives are stored in heap memory. whatever value you create from an existing value , you get a reference of the original value, and if you change the copied value the original one also gets changed.

```js
// Stack memory example
let newName = "Hello world";
let name = newName;

name = "name";

console.log(newName); // "Hello world"
console.log(name); // "name"

// Heap Memory example
let user = {
  email: "test@gmail.com",
  name: "text",
};

let user2 = user;
user2.email = "new@gmail.com";

console.log(user.email); // new@gmail.com
console.log(user2.email); // new@gmail.com
```
