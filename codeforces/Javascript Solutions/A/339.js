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
	let x=readLine().split('+').map(n=>+n)
	x=x.sort().toString()
	let str=''
	for(let i=0;i<x.length;i++){
		if(x[i]===',')
			str+='+'
		else str+=x[i]
	}
	console.log(str)
}