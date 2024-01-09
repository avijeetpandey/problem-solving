/**
 * @param {number[][]} accounts
 * @return {number}
 */
var maximumWealth = function (accounts) {
  let maxW = 0;
  accounts.forEach((account) => {
    let sum = 0;
    account.forEach((el) => {
      sum += el;
    });

    maxW = Math.max(maxW, sum);
  });
  return maxW;
};
