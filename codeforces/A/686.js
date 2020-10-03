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
	let [t,d]=readLine().split(" ").map(n=>+n)
	let distressed = 0
	while(t--){
		let [sign,amt] = readLine().split(" ")
		sign === '+' ? 
			d+=parseInt(amt)
		: amt > d ? distressed++ : d-=parseInt(amt)
	}

	console.log(d,distressed)
}