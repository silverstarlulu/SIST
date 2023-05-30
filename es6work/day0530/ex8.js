//비교연산자
let a = 6;
let b = "6";

console.log(a == b); //값으로만 비교하므로 true
console.log(a === b); //type까지 검사하므로 false

console.log(`a의 타입은 ${typeof a} 입니다.`);
console.log(`b의 타입은 ${typeof b} 입니다.`);

console.log(Object.is(a, b));
