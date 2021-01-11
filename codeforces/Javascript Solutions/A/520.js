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
	let n = +readLine()
	let str = readLine().toLowerCase()
	let pass = true

	let alpha={}
	for(let i=65;i<=90;i++)
		alpha[String.fromCharCode(i).toLowerCase()]=0

	for(let char of str)
		alpha[char]++

	for(let key in alpha){
		if(alpha[key]===0){
			pass=false
			break
		}
	}

	if(pass)
		console.log('YES')
	else console.log('NO')

}