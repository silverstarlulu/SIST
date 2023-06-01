import React, { useState } from "react";
import Alert from "@mui/material/Alert";

function SixApp(props) {
  const [names, setNames] = useState([
    "서동익",
    "박예은",
    "박재승",
    "이지민",
    "이효리",
    "장환라",
  ]);

  //추가할 이름
  const [irum, setIrum] = useState("");

  //추가버튼
  const btnInsert = () => {
    setNames(names.concat(irum)); //배열에 irum 데이터 추가
    setIrum("");
  };

  //입력 change
  const txtInput = (e) => {
    setIrum(e.target.value);
  };

  //더블클릭 시 이름삭제
  const dataRemove = (index) => {
    console.log("remove: " + index);

    //i와 같지 않은 것을 빼고 나머지를 다시 수집
    setNames(names.filter((item, i) => i !== index));
    console.log(names);
  };
  return (
    <div>
      <Alert severity="success">SixApp 입니다.</Alert>

      <div className="form-inline">
        <input
          value={irum}
          className="form-control"
          style={{ width: "150px", margin: "20px 10px" }}
          onChange={txtInput}
        />
        <button className="btn btn-info" onClick={btnInsert}>
          추가
        </button>
      </div>
      <Alert severity="error" style={{ width: "300px" }}>
        이름을 더블클릭하면 삭제됩니다.
      </Alert>
      <ul>
        {names.map((name, index) => (
          <li onDoubleClick={() => dataRemove(index)}>{name}</li>
        ))}
      </ul>
    </div>
  );
}

export default SixApp;
