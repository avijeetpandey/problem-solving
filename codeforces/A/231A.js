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
	let t = parseInt(readLine())
	let solCount=0
	while(t--){
		let [petya,vasya,tonya] = readLine().split(" ").map(n=>+n)
		if(petya && vasya || vasya && tonya || petya && tonya)
			solCount++
	}
	console.log(solCount)
}