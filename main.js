/*
* @author {Avijeet}
*/

'use strict';
process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

const readLine=()=> inputString[currentLine++];
/* ================================================ 
           Main Solution Starts Here  
===================================================*/
const main=()=>{
    let arr =[[1,5],[7,3],[3,5]]
    let max=0
   arr.forEach(a=>{
        let x = a.reduce((a,b)=>a+b,0)
        max = Math.max(x,max)
   })
   console.log(max)
}