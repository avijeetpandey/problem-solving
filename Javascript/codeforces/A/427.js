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
	let hired=0
	let untreated=0
	let x=+readLine()
	let order=readLine().split(" ").map(n=>+n)/* +ve int*/
	for(let i=0;i<order.length;i++){
		if(order[i]===-1){
			if(hired){
				hired--
			}else untreated++
		}else hired+=order[i]
	}

	console.log(untreated)
}