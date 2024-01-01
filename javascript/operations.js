"use strict";

// ======= Operations ======
let value = 3;
let negativeValue = -value;

console.log(typeof negativeValue);
console.log(negativeValue);

/**
 * If string is in front - all will be treated as string
 * if end then - operation will happen and will be concatenated with string
 */

console.log("1" + 2); // "12"
console.log(1 + "2"); // "12"
console.log(5 + "4" + 2); // "542"
console.log(5 + 4 + "2"); // "92"
