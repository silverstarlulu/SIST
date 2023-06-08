import React from "react";
import "../App.css";
import infoImg from "../image/라비.png";

function Info(props) {
  return (
    <div>
      <img src={infoImg} style={{ width: "100px" }} />
      <br />
      <b>박예은</b>
      <br />
      <b>010-1234-5678</b>
    </div>
  );
}

export default Info;
