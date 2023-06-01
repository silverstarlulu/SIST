import React, { useState } from "react";
import "../App.css";
import img1 from "../image/도리.png";
import img2 from "../image/라비.png";
import img3 from "../image/점프.png";
import img4 from "../image/츄피.png";
import img5 from "../image/케로피2.png";

function TwoApp(props) {
  const [hp1, setHp1] = useState("02");
  const [hp2, setHp2] = useState("0000");
  const [hp3, setHp3] = useState("0000");
  const [photo, setPhoto] = useState(1);

  const changeHp1 = (e) => {
    setHp1(e.target.value);
  };

  const changeHp2 = (e) => {
    setHp2(e.target.value);
  };

  const changeHp3 = (e) => {
    setHp3(e.target.value);
  };

  const changePhoto = (e) => {
    setPhoto(Number(e.target.value));
  };

  return (
    <div>
      <h2 className="alert alert-info">TwoApp 입니다.</h2>
      <div className="form-inline">
        <b style={{ marginLeft: "100px" }}>전화번호 입력: </b>
        <select
          className="form-control"
          style={{ width: "70px" }}
          onChange={changeHp1}
        >
          <option>02</option>
          <option>010</option>
          <option>031</option>
          <option>041</option>
          <option>032</option>
        </select>
        <b> - </b>
        <input
          type="text"
          style={{ width: "100px" }}
          className="form-control"
          maxLength="4"
          defaultValue={hp2}
          onKeyUp={changeHp2}
        />
        <b> - </b>
        <input
          type="text"
          style={{ width: "100px" }}
          className="form-control"
          maxLength="4"
          defaultValue={hp3}
          onKeyUp={changeHp3}
        />

        <b style={{ marginLeft: "100px" }}>이미지 선택: </b>
        <select className="form-control" onChange={changePhoto}>
          <option value="1">도리</option>
          <option value="2">라비</option>
          <option value="3">점프</option>
          <option value="4">츄피</option>
          <option value="5">케로피</option>
        </select>
      </div>

      <br />
      <br />
      <h1>
        {hp1}-{hp2}-{hp3}
      </h1>
      <img
        style={{ width: "200px" }}
        src={
          photo === 1
            ? img1
            : photo === 2
            ? img2
            : photo === 3
            ? img3
            : photo === 4
            ? img4
            : img5
        }
        className="photo"
        alt="이미지"
      />
    </div>
  );
}

export default TwoApp;
