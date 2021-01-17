let kidsWithCandies = (nums,extraCandies)=>{
    let maxCandy = Math.max(...nums)
    let possibility = []
    
    nums.forEach(num=>{
        let totalCandies = num + extraCandies
        if(totalCandies >= maxCandy){
            possibility.push(true)
        }else possibility.push(false)
    })
    
    return possibility 
}