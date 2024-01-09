/**
 * @param {string[]} words
 * @param {character} x
 * @return {number[]}
 */
var findWordsContaining = function (words, x) {
  const results = [];

  words.forEach((el, index) => {
    if (el.includes(x)) {
      results.push(index);
    }
  });

  return results;
};
