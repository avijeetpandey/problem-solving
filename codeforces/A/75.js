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
	let first=+readLine()
	let second=+readLine()
	let third = first+second
	let newFirst='', newSecond='' , newThird2=''
	for(let char of first.toString()) 
		if(char!=='0')
			newFirst+=char
	for(let char of second.toString())
			if(char!=='0')
				newSecond+=char		
	for(let char of third.toString())
		if(char!=='0')
			newThird2+=char
	let newThird=+newFirst + (+newSecond)

	if(+newThird2===newThird)
		console.log('YES')
	else console.log('NO')
	
}