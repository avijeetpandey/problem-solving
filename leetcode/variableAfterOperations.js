/**
 * @param {string[]} operations
 * @return {number}
 */
var finalValueAfterOperations = function (operations) {
  let value = 0;

  operations.forEach((operation) => {
    if (operation === "X++" || operation === "++X") {
      value++;
    } else {
      value--;
    }
  });

  return value;
};
