'use strict';
process.stdin.resume();2
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
	let digit = +readLine() % 10
	if(digit===3)
		console.log('bon')
	else if(digit ===0 || digit===1 || digit===6 || digit===8)
		console.log('pon')
	else console.log('hon')
}