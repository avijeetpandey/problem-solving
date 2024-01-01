"use strict";
// By using strict treat all JS code as a newer version

// ECMA defines the standards for writting javascript

/**
 * Datatypes
 *  - number - 2^53
 *  - bigint
 *  - string
 *  - boolean - true/false
 *  - null - null is a standalone value in javascript
 *  - undefined - no value has been assinged to variable till now
 *  - symbol - used for defining uniquiness
 */

console.log(typeof undefined); // undefined
console.log(typeof null); // object

let age = 33;

console.log(typeof age);

const value = "33abx";
const valueInNumber = Number(value);
console.log(typeof valueInNumber);
console.log(valueInNumber);

// NaN - is a type of number in javascript

const isLoggedIn = null;

let booleanIsLoggedIn = Boolean(isLoggedIn);

console.log(typeof booleanIsLoggedIn);
console.log(booleanIsLoggedIn);

/**
 * Boolean conversions
 * 1 => true, 0 => false
 * "" - false
 * "not empty string" - true
 * undefined - false
 * null - false
 */
