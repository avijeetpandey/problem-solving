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
	let n = parseInt(readLine())
	if(n%2==0 && n!=2)
		console.log("YES")
	else console.log("NO")
}