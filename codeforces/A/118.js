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

const isVowel=(x)=>{
    let result;
    result = x === "A" || x==="Y" || x === "E" || x === "I" || x === "O" || x === "U" || x==="a" || x === "e" || x === "i" || x === "o" || x === "u" || x==="y"
    return result;
}

const main=()=>{
	let first = readLine().toLowerCase()
	let newString=''
	for(let char of first){
		if(!isVowel(char))
			newString+='.'+char
	}

	console.log(newString)

}