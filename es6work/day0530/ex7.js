let irum = "박예은";
let birth = 1999;
let food = "초밥";

let curYear = new Date().getFullYear();

//기존 출력방식
let result =
  "이름: " +
  irum +
  "\n생년: " +
  birth +
  "\n나이: " +
  (curYear - birth + 1) +
  "\n좋아하는 음식: " +
  food;
console.log(result);

//리터럴 출력방식
let result2 = `이름: ${irum}
생년: ${birth}
나이: ${curYear - birth + 1}
좋아하는 음식: ${food}`;

console.log(result2);
