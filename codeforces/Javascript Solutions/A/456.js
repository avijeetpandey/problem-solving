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
	let t=+readLine()
	let c=0
	while(t--){
		let [a,b] = readLine().split(" ").map(n=>+n)
		if(b>a)
			c++
	}
	if(c)
		console.log('Happy Alex')
	else console.log('Poor Alex')
}