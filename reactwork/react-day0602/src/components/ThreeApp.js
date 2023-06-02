import React, { useRef, useState } from "react";

function ThreeApp(props) {
  //일반 state 변수
  const [count, setCount] = useState(0);

  //ref 선언
  const countRef = useRef(0);

  //state 증가함수
  const stateIncre = () => {
    setCount(count + 1); //누를때마다 계속 렌더링
  };

  //ref 증가함수
  const refIncre = () => {
    countRef.current = countRef.current + 1;
    console.log("countRef: " + countRef.current); //렌더링이 안돼서 화면 안 바뀌어 확인 x 므로
  };

  return (
    <div>
      <h1>ThreeApp_useRef</h1>
      <button type="button" className="btn btn-info" onClick={stateIncre}>
        state 변수 증가
      </button>
      <div>{count}</div>
      <br />
      <br />

      <button type="button" className="btn btn-warning" onClick={refIncre}>
        ref 변수 증가
      </button>
      <div>{countRef.current}</div>
    </div>
  );
}

export default ThreeApp;
