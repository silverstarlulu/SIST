import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

function ShopForm(props) {
  //db명과 일치해야하는 멤버들 setData
  const [photo, setPhoto] = useState("");
  const [sangpum, setSanpum] = useState("");
  const [su, setSu] = useState("");
  const [dan, setDan] = useState("");

  //이동에 필요한 navi
  const navi = useNavigate();

  //url 등록
  let uploadUrl = "http://localhost:9000/shop/upload"; //백엔드 주소
  let photoUrl = "http://localhost:9000/save/"; //이미지 저장 주소
  let insertUrl = "http://localhost:9000/shop/insert"; //dto insert

  //파일 change 호출 이벤트
  const uploadImage = (e) => {
    const uploadFile = e.target.files[0]; //spring의 이름과 동일하게
    const imageFile = new FormData();

    imageFile.append("uploadFile", uploadFile);

    //통신 Axios 처리
    axios({
      method: "post",
      url: uploadUrl,
      data: imageFile,
      headers: { "Content-Type": "multipart/form-data" },
    })
      .then((res) => {
        setPhoto(res.data); //백엔드에서 보낸 변경된 이미지명을 photo변수에 넣음
      })
      .catch((err) => {
        alert("err");
      });
  };

  //추가하는 함수 이벤트 : 추가 후 목록으로 이동
  const onInsert = () => {
    axios
      .post(insertUrl, { sangpum, su, dan }) //원래는 key값:value값인데 spring과 동일하게 해놔서 value만 써도 됨
      .then((res) => {
        //인서트 성공 후 처리 할 코드 (목록으로 이동)
        navi("/shop/list");
      })
      .catch((err) => {
        alert("인서트 오류");
      });
  };

  return (
    <div>
      <table className="table table-bordered" style={{ width: "600px" }}>
        <caption>
          <b>상품등록</b>
        </caption>
        <tbody>
          <tr>
            <th width="90" style={{ backgroundColor: "#c2dedc" }}>
              상품명
            </th>
            <td width="300">
              <input
                type="text"
                className="form-control"
                style={{ width: "250px" }}
                onChange={(e) => setSanpum(e.target.value)}
              />
            </td>
            <th>{sangpum}</th>
          </tr>

          <tr>
            <th width="90" style={{ backgroundColor: "#c2dedc" }}>
              상품사진
            </th>
            <td width="300">
              <input
                type="file"
                className="form-control"
                style={{ width: "250px" }}
                onChange={uploadImage}
              />
            </td>
            <th>{photo}</th>
          </tr>

          <tr>
            <th width="90" style={{ backgroundColor: "#c2dedc" }}>
              단가
            </th>
            <td width="300">
              <input
                type="text"
                className="form-control"
                style={{ width: "250px" }}
                onChange={(e) => setDan(e.target.value)}
              />
            </td>
            <th>{dan}</th>
          </tr>

          <tr>
            <th width="90" style={{ backgroundColor: "#c2dedc" }}>
              수량
            </th>
            <td width="300">
              <input
                type="text"
                className="form-control"
                style={{ width: "250px" }}
                onChange={(e) => setSu(e.target.value)}
              />
            </td>
            <th>{su}</th>
          </tr>
          <tr style={{ width: "160px" }}>
            <td colSpan="2">
              <img
                src={photoUrl + photo}
                style={{ width: "120px", marginLeft: "120px" }}
              />
            </td>
            <td>
              <button
                type="button"
                className="btn btn-info"
                style={{ width: "120px", height: "120px", marginLeft: "30px" }}
                onClick={onInsert}
              >
                상품등록
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  );
}

export default ShopForm;
