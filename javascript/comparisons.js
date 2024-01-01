console.log(2 > 1); //  always gives boolean values

console.log("02" > 1); // true

console.log(null > 0); // false
console.log(null == 0); // false
console.log(null >= 0); // true

// The reason is that an equality check == and comparisons works differently comparisons convert null to number treating it as 0
