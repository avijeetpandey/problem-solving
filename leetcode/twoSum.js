const twoSum = (nums, target) => {
    const hashmap = {}
    for (let i = 0; i < nums.length; i++){
        const diff = target - nums[i];
        if(hashmap[diff] !== undefined && hashmap[diff] !== i)  return [i, hashmap[diff]]
		hashmap[nums[i]] = i
    }
}