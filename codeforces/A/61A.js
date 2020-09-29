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
	let newNumber=''
	let firstNumber = readLine()
	let secondNummber = readLine()
	let length = firstNumber.length
	for(let i=0;i<length ; i++){
		if(firstNumber[i]==secondNummber[i])
			newNumber+='0'
		else newNumber+='1'
	}
	
	console.log(newNumber)
}