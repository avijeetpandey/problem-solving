ram {number[]} nums
 * @return {number[]}
 *  */
	let runningSum = (nums)=>{
		    let sum = nums[0]
		    for(let i=1;i<nums.length;i++){
			            sum+=nums[i]
			            nums[i]=sum
			        }
		    
		    return nums
	}
