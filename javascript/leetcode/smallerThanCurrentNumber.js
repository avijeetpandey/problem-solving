const smallerNumbersThanCurrent = (nums)=>{
    let res=[]
    const testSorted = [...nums].sort((a,b)=>a-b)
    
    for(let num of nums){
        let index = testSorted.indexOf(num)
        res.push(index)
    }
    
    return res
}