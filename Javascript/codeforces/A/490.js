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
	let n=+readLine()
	let one = 0,two=0,three=0
	let o=[],t=[],th=[]
	let ls = readLine().split(" ").map((n,index)=>{
		if(n==='1')
			one++ , o.push(index+1)
		else if (n==='2')
			two++ , t.push(index+1)
		else if(n==='3') three++, th.push(index+1)
	return +n
	})
	let teams = Math.min(one,Math.min(two,three))
	if(teams){
		console.log(teams)
		for(let i=0;i<teams;i++){
			console.log(o[i],t[i],th[i])
		}
	}else{	
		console.log(teams)
	}
}
