/**
 * @param {number[]} nums
 * @return {number[]}
 */
var runningSum = function (nums) {
  const res = [];
  let runningSum = 0;

  nums.forEach((num) => {
    runningSum += num;
    res.push(runningSum);
  });

  return res;
};
