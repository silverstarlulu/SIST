class Student {
  //생성자 클래스명이 무조건 constructor
  constructor(name) {
    this.name = name;
  }

  writeName() {
    console.log(`내 이름은 ${this.name} 입니다.`);
  }
}

let s1 = new Student("예운");

console.log(`이름: ${s1.name}`);

s1.writeName();

let s2 = new Student("이지민");
console.log(`이름은 ${s2.name} 이에요`);
s2.writeName();
