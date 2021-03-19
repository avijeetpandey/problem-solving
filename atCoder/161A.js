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

const swap=(a,b)=>{
	return [b,a]
}

const main=()=>{
	let [a,b,c] = readLine().split(" ")
	a = a ^ b
	b = a ^ b
	a = a ^ b

	a=a^c
	c=a^c
	a=a^c

	console.log(a,b,c)

}