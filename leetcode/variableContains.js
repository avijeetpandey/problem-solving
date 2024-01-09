const arr = ["abc","bcd","aaaa","cbc"]
const x = "e";

arr.forEach((el, index) => {
  if (el.includes(x)) {
    console.log({ el, x, index });
  }
});
