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
	let number = +readLine()
	let message='Christmas Eve Eve Eve'
	switch(number){
		case 23:
			message = 'Christmas Eve Eve'
			break
		case 24:
			message = 'Christmas Eve'
			break
		case 25:
			message = 'Christmas'
	}
	console.log(message)
}