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


const main=()=>{
	let t = parseInt(readLine())
	while(t--){
		let s = readLine()
		if(s.length <= 10)
			console.log(s)
		else console.log(s[0]+(s.length-2)+s[s.length-1])
	}
}