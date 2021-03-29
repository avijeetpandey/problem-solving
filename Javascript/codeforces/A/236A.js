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
 *            Main Solution Starts Here  
 *            ===================================================*/

const main=()=>{
		let counts={}
		let userName=readLine()
		
		let set = new Set()
		for(let char of userName)
				set.add(char)


		if(set.size%2==0)
				console.log('CHAT WITH HER!')
		else console.log('IGNORE HIM!')
}
