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
	let [k,r] = readLine().split(" ").map(n=>+n)
	let canBuy = true
	let i = 0
	let h = 1

	while(canBuy){
		i++
		h = i*k
		if(h%10==0 || h%10==r)
			canBuy=false
	}



	console.log(i)
}