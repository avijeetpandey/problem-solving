const shuffle=(nums,n)=>{
    let result = []
    for(let i=0;i<n;i++){
        result.push(nums[i])
        result.push(nums[n+i])
    }
    return result
}