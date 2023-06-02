import React, { useState } from "react";

function TwoApp(props) {
  const [board, setBoard] = useState([
    {
      no: 1,
      writer: "박예은",
      subject: "안녕ㅇ!",
      photo: "최고심1",
    }, //배열 초기값 객체로 넣음
    {
      no: 2,
      writer: "이지민",
      subject: "모하냐",
      photo: "최고심2",
    },
    {
      no: 3,
      writer: "알콜스왑",
      subject: "100매입이야",
      photo: "최고심3",
    },
    {
      no: 4,
      writer: "베이글칩",
      subject: "갈릭맛이란다!",
      photo: "최고심4",
    },
    {
      no: 5,
      writer: "매머드",
      subject: "맘모스일까 매머드일까",
      photo: "최고심5",
    },
  ]);

  return (
    <div>
      <h1>TwoApp_객체공통변수로 테이블 배열안에 객체출력</h1>
      <table className="table table-bordered" style={{ width: "500px" }}>
        <caption>
          <b>배열객체출력</b>
        </caption>
        <thead>
          <tr style={{ backgroundColor: "powderblue" }}>
            <th width="60">번호</th>
            <th width="100">이미지</th>
            <th width="260">제목</th>
            <th width="120">작성자</th>
          </tr>
        </thead>
        <tbody>
          {board.map((content, index) => (
            <tr>
              <td>{content.no}</td>
              <td>
                <img
                  src={`../image/${content.photo}.jpg`}
                  style={{ width: "50px" }}
                />
              </td>
              <td>{content.subject}</td>
              <td>{content.writer}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

export default TwoApp;
