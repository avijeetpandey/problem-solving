function twoSum(arr, target) {
    for(let i=0;i<arr.length;i++) {
        for(let j=i+1;j<arr.length;j++) {
            if(arr[i]+arr[j] === target) {
                return [i,j]
            }
        }
    }
    
    return []
}

let arr = [2,4,5,6,9]

console.log(twoSum(arr,6))
