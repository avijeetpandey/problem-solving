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
	let rain = readLine()
	let ans=0
	let isConsective=false

	for(let i=0;i<rain.length;i++){
		if(rain[i]==='R'){
			if(isConsective)
				ans++;
			else {
				ans=1
				isConsective=true
			}
		}else isConsective=false
	}

	console.log(ans)
}