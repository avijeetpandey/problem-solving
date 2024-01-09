/**
 * @param {number[]} hours
 * @param {number} target
 * @return {number}
 */
var numberOfEmployeesWhoMetTarget = function (hours, target) {
  let count = 0;

  hours.forEach((hour) => {
    if (hour >= target) count++;
  });

  return count;
};
