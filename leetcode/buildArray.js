/**
 * Given a zero-based permutation nums (0-indexed),
 * build an array ans of the same length where ans[i] = nums[nums[i]]
 * for each 0 <= i < nums.length and return it.
 */

var buildArray = function (nums) {
  let buildArray = [];
  for (let i = 0; i < nums.length; i++) {
    buildArray[i] = nums[nums[i]];
  }
  return buildArray;
};