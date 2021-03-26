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
	let [n,k]=readLine().split(" ").map(n=>+n)
	let ans=0
	while(n--){
		let counter=0
		let x=readLine()
		for(let i=0;i<=k;i++)
			if(x.search(i-'0')!=-1)
				counter++
		if(counter==(k+1))
			ans++
	}
	console.log(ans)
}