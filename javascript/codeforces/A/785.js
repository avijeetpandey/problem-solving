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
	let t=+readLine()
	let sides={
		'Tetrahedron' : 4,
		'Cube' : 6,
		'Octahedron' : 8,
		'Dodecahedron' : 12,
		'Icosahedron' : 20
	}

	let totalFaces=0
	while(t--){
		let shape=readLine()
		totalFaces+=sides[shape]
	}
	console.log(totalFaces)
}