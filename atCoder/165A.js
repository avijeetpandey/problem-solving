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
	let k = +readLine()
	let [start,end] = readLine().split(" ").map(n=>+n)
	for(let i = start ; i<=end;i++){
		if(i%k===0){
			console.log('OK')
			break;
		}
		if(i==end && i%k!=0)
			console.log('NG')
	}

}