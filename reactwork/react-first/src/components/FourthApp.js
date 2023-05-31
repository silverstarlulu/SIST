import React, { useState } from "react";

function FourthApp(props) {
  const [name, setName] = useState("박예은");
  const [age, setAge] = useState(25);

  return (
    <div>
      <h2 className="alert alert-danger">FourthApp</h2>

      <b style={{ fontSize: "30px" }}>
        이름: {name}
        <span style={{ marginLeft: "50px" }}></span>
        나이: {age}세
      </b>
      <br />
      <br />
      <button
        type="button"
        className="btn btn-info"
        onClick={(e) => {
          setName("계은이");
          setAge(22);
        }}
      >
        정보수정
      </button>
      <button
        type="button"
        className="btn btn-danger"
        onClick={(e) => {
          setName("입력바람");
          setAge("0");
        }}
      >
        초기화
      </button>
    </div>
  );
}

export default FourthApp;
