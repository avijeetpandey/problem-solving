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
	let a=readLine()
	let b=readLine()

	let c=a+b

	switch(c){
		case '31':
			console.log(2)
			break
		case '32':
			console.log(1)
			break
		case '21':
			console.log(3)
			break
		case '23':
			console.log(1)
			break
		case '12':
			console.log(3)
			break
		case '13':
			console.log(2)
			break
	}
}