import React, { useState } from "react";

function WriteForm(props) {
  const [writer, setWriter] = useState("");
  const [photo, setPhoto] = useState("최고심6");
  const [subject, setSubject] = useState("");

  //추가버튼 이벤트
  const addDataEvent = () => {
    props.onSave({ writer, photo, subject });
  };

  return (
    <div className="form-inline">
      <b>이름: </b>
      <input
        type="text"
        defaultValue={writer}
        style={{ width: "100px" }}
        className="form-control"
        placeholder="이름입력"
        onChange={(e) => {
          setWriter(e.target.value);
        }}
      />
      &nbsp;&nbsp; <b>제목: </b>
      <input
        type="text"
        defaultValue={subject}
        style={{ width: "100px" }}
        className="form-control"
        placeholder="제목입력"
        onChange={(e) => {
          setSubject(e.target.value);
        }}
      />
      &nbsp;&nbsp; <b>이미지: </b>
      <select
        onChange={(e) => {
          setPhoto(e.target.value);
        }}
      >
        {
          //1~15 map으로 돌리기
          [...new Array(15)].map((a, idx) => (
            <option>{`최고심${idx + 1}`}</option>
          ))
        }
      </select>
      <button
        type="button"
        className="btn btn-info"
        style={{ marginLeft: "20px" }}
        onClick={addDataEvent}
      >
        추가
      </button>
    </div>
  );
}

export default WriteForm;
