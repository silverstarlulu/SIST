//일반 함수
function f1() {
  console.log("일반 함수 f1");
}

// f1();

//화살표 함수
let f2 = () => console.log("화살표 함수 f2");

// f2();

//일반
function f3(a, b) {
  return a + b;
}

let a = f3(5, 7);
// console.log(a);

//화살표
let f4 = (a, b) => a + b;

let b = f4(11, 22);
// console.log(b);

//일반
function f5(x, y, z = 100) {
  return x + y + z;
}

// console.log(f5(1, 2, 3));
// console.log(f5(1, 2));

//화살표
let f6 = (x, y, z = 100) => x + y + z;

// console.log(f6(1, 2, 3));
// console.log(f6(1, 2));

//오브젝트를 객체로
//f1안에 f2를 만들어서 f1 호출

let ob = {
  f1: () => {
    console.log(1);
    let f2 = () => console.log(2);

    f2();

    setTimeout(f2, 1000); //1초뒤에 2
  },
};

ob.f1();
