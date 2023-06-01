import React from "react";
import Alert from "@mui/material/Alert";
import AttachMoneyRoundedIcon from "@mui/icons-material/AttachMoneyRounded";

import img1 from "../image/도리.png";
import img2 from "../image/라비.png";
import img3 from "../image/점프.png";
import img4 from "../image/츄피.png";
import img5 from "../image/케로피2.png";

function FiveApp(props) {
  //이미지 배열변수
  const imgArr = [img1, img2, img3, img4, img5];

  //public 이미지
  const imgArr2 = [
    "최고심1",
    "최고심2",
    "최고심3",
    "최고심4",
    "최고심5",
    "최고심6",
  ];

  return (
    <div>
      <Alert severity="warning">
        FiveApp 입니다.&nbsp;
        <AttachMoneyRoundedIcon />
      </Alert>

      <h4>src의 이미지를 배열로 넣어 반복하기</h4>
      {imgArr.map((img, index) => (
        <img src={img} style={{ width: "100px" }} alt="이미지" />
      ))}

      <h4>public의 이미지를 배열로 넣어 반복하기</h4>
      {imgArr2.map((img2, index) => (
        <img className="photo2" src={`../image2/${img2}.jpg`} alt="이미지" />
      ))}
    </div>
  );
}

export default FiveApp;
