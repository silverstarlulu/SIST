import React, { useState } from "react";
import RowItem from "./RowItem";
import WriteForm from "./WriteForm.js";

function FiveApp(props) {
  const [board, setBoard] = useState([
    {
      writer: "박예은",
      subject: "안녕ㅇ!",
      photo: "최고심1",
      today: new Date(),
    },
    {
      writer: "이지민",
      subject: "모하냐",
      photo: "최고심2",
      today: new Date(),
    },
    {
      writer: "알콜스왑",
      subject: "100매입이야",
      photo: "최고심3",
      today: new Date(),
    },
    {
      writer: "베이글칩",
      subject: "갈릭맛이란다!",
      photo: "최고심4",
      today: new Date(),
    },
    {
      writer: "매머드",
      subject: "맘모스일까 매머드일까",
      photo: "최고심5",
      today: new Date(),
    },
  ]);

  //데이터 추가함수 이벤트
  //board를 바꾸면 렌더링이 다시 되면서 추가
  const dataSave = (data) => {
    setBoard(
      board.concat({
        // writer: data.writer,
        // subject: data.subject,
        // photo: data.photo,
        ...data,
        today: new Date(),
      })
    );
  };

  //데이터 삭제 이벤트
  const dataDelete = (index) => {
    setBoard(board.filter((item, i) => i !== index));
  };

  return (
    <div>
      <h1>FiveApp_부모</h1>

      <WriteForm onSave={dataSave} />

      <table className="table table-bordered" style={{ width: "600px" }}>
        <thead>
          <tr style={{ backgroundColor: "pink" }}>
            <th width="100">이름</th>
            <th width="100">사진</th>
            <th width="200">제목</th>
            <th width="150">날짜</th>
            <th width="100">삭제</th>
          </tr>
        </thead>
        <tbody>
          {
            //데이터 개수만큼 호출, 자식에서 출력
            board.map((row, index) => (
              <RowItem content={row} dataDelete={dataDelete} index={index} />
            ))
          }
        </tbody>
      </table>
    </div>
  );
}

export default FiveApp;
