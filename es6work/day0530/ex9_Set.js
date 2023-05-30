let set = new Set("abcdefgfffffghi"); //중복문자 걸러냄
console.log(set);

set.add("z"); //중복 x, 추가 o
console.log(set);

set.add("a"); //중복 o, 추가 x
console.log(set);

console.log(set.has("a"));
console.log(set.has("j"));

console.log("길이: " + set.size);

console.log(...set);

set.delete("a");
console.log(...set);

set.clear();
console.log(set.size);
