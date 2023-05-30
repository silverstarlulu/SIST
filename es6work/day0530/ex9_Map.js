let map = new Map();
let a = { n: 1 };

map.set(a, "A");
map.set("2", 9);
map.set("2", 11);

console.log(map);

console.log(map.has("2"));
map.delete("2");
console.log(map);

map.clear();
console.log(map);
