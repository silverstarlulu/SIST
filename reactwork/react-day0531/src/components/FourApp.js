import React from "react";
import Alert from "@mui/material/Alert";
import Face3Icon from "@mui/icons-material/Face3";

function FourApp(props) {
  const names = ["박예은", "이지민", "강달국", "케어베어", "빅파이"];

  //반복문을 변수에 저장 후 출력해도 됨, but, 리턴해서 직접주는경우가 더 많음
  const nameList = names.map((name) => <li>{name}</li>); //한 줄은 자동 리턴됨, li 태그로 리턴받도록 함

  const colors = ["#F1D4E5", "#73BBC9", "#F6FA70", "#C38154", "#8696FE"];

  return (
    <div>
      <Alert severity="error">
        FourApp 입니다.&nbsp;
        <Face3Icon />
      </Alert>

      <div>
        <h3>map 반복문 연습</h3>
        <ol>{nameList}</ol>

        <hr />

        <ul>
          {names.map((name, index) => (
            <b style={{ marginLeft: "10px" }}>
              {index}:{name}
            </b>
          ))}
        </ul>

        <hr />

        {colors.map((color) => (
          <div className="box" style={{ backgroundColor: color }}>
            {color}
          </div>
        ))}
      </div>
    </div>
  );
}

export default FourApp;
