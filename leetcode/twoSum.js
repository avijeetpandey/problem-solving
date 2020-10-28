/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
   let map = new Map()
   for(let i=0;i<=nums.length-1;i++){
       let subtractedValue = target-nums[i]
       let matchingValue = map.get(subtractedValue)
       if(matchingValue !== undefined)
           return [matchingValue,i]
       map.set(nums[i],i)
   }
};