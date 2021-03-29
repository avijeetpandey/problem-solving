/**
 * To Find Max and Min of an array
 */
let arr = [11,2,5,6,9,8,10]
let max = Math.max(...arr)
let min = Math.min(...arr)

// Sorting ASC and DESC
arr.sort((a,b)=>a-b)
arr.sort((a,b)=>b-a)