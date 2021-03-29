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
	let x=readLine()
	let uc=0,lc=0
	for(let char of x)
		if(char==char.toUpperCase())
			uc++
		else lc++

	if(lc==uc || lc > uc)
		console.log(x.toLowerCase())
	else console.log(x.toUpperCase())
}