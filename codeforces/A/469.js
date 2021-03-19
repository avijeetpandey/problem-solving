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
	let x=readLine().split(" ").map(n=>+n)
	let y=readLine().split(" ").map(n=>+n)

	let s=new Set()

	for(let i=1;i<x.length;i++)
		s.add(x[i])
	for(let i=1;i<y.length;i++)
		s.add(y[i])

	s.size===t ? 
	console.log('I become the guy.') :
	console.log('Oh, my keyboard!')

}