import React, { useState } from "react";

function ThreeApp(props) {
  const [photo, setPhoto] = useState("../image2/최고심1.jpg");

  const changePhoto = (e) => {
    setPhoto(e.target.value);
  };

  return (
    <div>
      <h2 className="alert alert-info">ThreeApp 입니다.</h2>
      <div style={{ fontSize: "20px" }}>
        <label>
          <input
            type="radio"
            name="photo"
            className="form-control"
            value="../image2/최고심1.jpg"
            onClick={changePhoto}
            defaultChecked
          />
          최고심1
        </label>
        &nbsp;&nbsp;&nbsp;
        <label>
          <input
            type="radio"
            name="photo"
            className="form-control"
            onClick={changePhoto}
            value="../image2/최고심2.jpg"
          />
          최고심2
        </label>
        &nbsp;&nbsp;&nbsp;
        <label>
          <input
            type="radio"
            name="photo"
            className="form-control"
            onClick={changePhoto}
            value="../image2/최고심3.jpg"
          />
          최고심3
        </label>
        &nbsp;&nbsp;&nbsp;
        <label>
          <input
            type="radio"
            name="photo"
            className="form-control"
            onClick={changePhoto}
            value="../image2/최고심4.jpg"
          />
          최고심4
        </label>
        &nbsp;&nbsp;&nbsp;
        <label>
          <input
            type="radio"
            name="photo"
            className="form-control"
            onClick={changePhoto}
            value="../image2/최고심5.jpg"
          />
          최고심5
        </label>
        &nbsp;&nbsp;&nbsp;
        <label>
          <input
            type="radio"
            name="photo"
            className="form-control"
            onClick={changePhoto}
            value="../image2/최고심6.jpg"
          />{" "}
          최고심6
        </label>
      </div>

      <br />
      <img src={photo} alt="이미지" style={{ width: "200px" }} />
    </div>
  );
}

export default ThreeApp;
