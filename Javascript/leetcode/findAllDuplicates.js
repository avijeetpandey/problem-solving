var findDuplicates = function (nums) {
  nums.sort((a, b) => a - b);
  let duplicate = [];
  for (let i = 0; i < nums.length - 1; i++) {
    if (nums[i] === nums[i + 1]) {
      duplicate.push(nums[i]);
    }
  }

  return duplicate;
};
