import React, { useState } from "react";
import FourSubApp from "./FourSubApp";
import FourSubApp2 from "./FourSubApp2";
import FourSubApp3 from "./FourSubApp3";

function FourApp(props) {
  const [number, setNumber] = useState(10);

  const numberIncre = () => {
    setNumber(number + 1);
  };

  const numberDecre = () => {
    setNumber(number - 1);
  };
  return (
    <div>
      <h1>FourApp_부모 자식 전달</h1>

      <FourSubApp name="예은" age="25" />
      <FourSubApp name="초코파이" age="50" />
      <FourSubApp name="스타벅스" age="30" />
      {/* props 변수로 name, age 전달 */}

      <br />
      <br />

      <FourSubApp2 food="인도커리" price="30000" />
      <FourSubApp2 food="회덮밥" price="10000" />
      <FourSubApp2 food="즉석떡볶이" price="25000" />

      <br />
      <br />
      <h1 style={{ color: "orange" }}>{number}</h1>
      <FourSubApp3 incre={numberIncre} decre={numberDecre} />
      {/* numberIncre함수를 incre라는 이름으로 전달 */}
    </div>
  );
}

export default FourApp;
