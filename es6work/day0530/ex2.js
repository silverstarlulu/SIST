var a = 1;
let b = 2;

function myFunction() {
  var a = 3;
  let b = 4;

  console.log(a + ", " + b);

  if (true) {
    var a = 5;
    let b = 6;

    console.log(a + ", " + b);
  }

  console.log(a + ", " + b);
}

myFunction();

console.log(a + ", " + b);
