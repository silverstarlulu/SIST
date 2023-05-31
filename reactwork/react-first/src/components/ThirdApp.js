import React, { useState } from "react";

function ThirdApp(props) {
  //상태관리를 위한 변수설정
  const [message, setMessage] = useState("☆ Happy Day ☆");

  //이벤트 함수 변수
  const handlerEnterEvent = (e) => {
    if (e.key == "Enter") {
      setMessage("");
      e.target.value = "";
    }
  };

  return (
    <div>
      <h2 className="alert alert-warning">ThirdApp</h2>
      <h3 style={{ color: "orange" }}>{message}</h3>
      <hr />

      <h4>메세지를 입력해주세요.</h4>
      <input
        type="text"
        style={{ width: "300px", fontSize: "2em" }}
        defaultValue={message}
        onChange={(e) => {
          setMessage(e.target.value);
        }}
        onKeyUp={handlerEnterEvent}
      />
    </div>
  );
}

export default ThirdApp;
