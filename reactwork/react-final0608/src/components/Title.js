import React from "react";
import "../App.css";
import titleImg from "../image/점프.png";

function Title(props) {
  return (
    <div>
      <h1
        style={{
          border: "5px solid #9AC5F4",
          borderRadius: "30px",
          width: "700px",
          textAlign: "center",
        }}
      >
        <img style={{ width: "100px" }} src={titleImg} />
        YEEUN's React Mini Project
        <img style={{ width: "100px" }} src={titleImg} />
      </h1>
    </div>
  );
}

export default Title;
