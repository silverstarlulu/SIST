var numbers = [1, 2, 3, 4, 5];

var processed = numbers.map(function (num) {
  return num * num;
});

console.log(processed);

var colors = ["red", "orange", "blue", "pink", "gray"];
colors.map((color, index) => {
  console.log(color, index);
});
