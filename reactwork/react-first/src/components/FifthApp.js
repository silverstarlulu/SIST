import React, { useState } from "react";

function FifthApp(props) {
  const inputStyle = {
    width: "200px",
    marginLeft: "20px",
  };

  const spanStyle = {
    color: "orange",
    marginLeft: "20px",
    fontWeight: "600",
  };

  const handlerBtnClick = (e) => {
    setTotal(Number(java) + Number(spring));
    setAvg(Number(java) + Number(spring) / 2.0);
  };

  const [name, setName] = useState("이름을 입력해주세요");
  const [java, setJava] = useState(0);
  const [spring, setSpring] = useState(0);
  const [total, setTotal] = useState(0);
  const [avg, setAvg] = useState(0);

  return (
    <div className="form-inline">
      이름:
      <input
        type="text"
        className="form-control"
        style={inputStyle}
        onChange={(e) => {
          setName(e.target.value);
        }}
      ></input>
      <span style={spanStyle}>{name}</span>
      <br />
      <br />
      자바:
      <input
        type="text"
        className="form-control"
        style={inputStyle}
        onChange={(e) => {
          setJava(e.target.value);
        }}
      ></input>
      <span style={spanStyle}>{java}</span>
      <br />
      <br />
      스프링:
      <input
        type="text"
        className="form-control"
        style={inputStyle}
        onChange={(e) => {
          setSpring(e.target.value);
        }}
      ></input>
      <span style={spanStyle}>{spring}</span>
      <br />
      <br />
      <button type="button" className="btn btn-info" onClick={handlerBtnClick}>
        결과확인
      </button>
      <div className="result">
        이름: {name}
        <br />
        자바점수: {java}점<br />
        스프링점수: {spring}점<br />
        총점: {total}점<br />
        평균: {avg}점
      </div>
    </div>
  );
}

export default FifthApp;
