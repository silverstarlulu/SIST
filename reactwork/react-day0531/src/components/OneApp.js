import React, { useState } from "react";
import "../App.css";

function OneApp(props) {
  const [number, setNumber] = useState(0);

  const numberIncre = () => {
    if (number === 10) {
      alert("10까지만 증가 가능");
      return;
    }
    setNumber(number + 1);
  };

  const numberDecre = () => {
    if (number === 0) {
      alert("0까지만 감소 가능");
      return;
    }
    setNumber(number - 1);
  };

  return (
    <div>
      <h2 className="alert alert-info">OneApp 입니다.</h2>
      <div className="number">{number}</div>

      <button
        style={{ marginRight: "20px" }}
        type="button"
        className="btn btn-default"
        onClick={numberIncre}
      >
        증가
      </button>
      <button type="button" className="btn btn-default" onClick={numberDecre}>
        감소
      </button>
    </div>
  );
}

export default OneApp;
