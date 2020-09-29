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
	let t=parseInt(readLine())
	let ec=0 , hc=0
	let c = readLine().split(" ").map(n=>+n)
	c.forEach(number=>{
		if(number==1) {
			hc++
		}
	})
 
	if(hc)
		console.log("HARD")
	else console.log("EASY")
}