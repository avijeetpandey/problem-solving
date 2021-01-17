const maxProduct = (nums)=>{
    nums.sort((a,b)=>a-b)
    let maxValue = (nums[nums.length-1]-1)*(nums[nums.length-2]-1)
    return maxValue
}