import React, { useEffect, useState } from "react";

function OneApp(props) {
  const [name, setName] = useState("홍길동");
  const [addr, setAddr] = useState("강남구");

  //1
  useEffect(() => {
    console.log("state변수가 값 변경될때마다 호출");
  });

  //2
  useEffect(() => {
    console.log("처음 렌더링 시 한번만 호출"); //생성자처럼
  }, []);

  //3
  useEffect(() => {
    console.log("이름변경 시에만 호출");
  }, [name]);

  return (
    <div>
      <h1 className="alert alert-info">OneApp_useEffect</h1>
      <h3>
        이름:
        <input
          type="text"
          defaultValue={name}
          onChange={(e) => {
            setName(e.target.value);
          }}
        />
      </h3>
      <h3>
        주소:
        <input
          type="text"
          defaultValue={addr}
          onChange={(e) => {
            setAddr(e.target.value);
          }}
        />
      </h3>

      <hr />

      <h2>이름: {name}</h2>
      <h2>주소: {addr}</h2>
    </div>
  );
}

export default OneApp;
