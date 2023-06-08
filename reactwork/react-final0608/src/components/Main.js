import React from "react";
import "../App.css";
import mainImg1 from "../image/고양이두마리.JPG";
import mainImg2 from "../image/리트리버.JPG";
import mainImg3 from "../image/비글.JPG";

function Main(props) {
  return (
    <div className="mainpage">
      <img src={mainImg2} className="main" />
      <br />
      <img src={mainImg1} className="main" />
      <br />
      <img src={mainImg3} className="main" />
      <br />
    </div>
  );
}

export default Main;
