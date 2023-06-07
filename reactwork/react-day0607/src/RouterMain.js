import React from "react";
import Menu from "./components/Menu";
import { Route, Routes } from "react-router-dom";
import Home from "./pages/Home";
import About from "./pages/About";
import "./App.css";

function RouterMain(props) {
  return (
    <div>
      {/* 모든 페이지에서 공통으로 포함되는 component나 image */}
      <Menu />
      <img src="./images/도리.png" className="main_photo" alt="이미지" />
      <hr className="line" />
      <div className="main_comp">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/about" element={<About />} />
          <Route path="/about/:name" element={<About />} />
          <Route
            path="/login/*"
            element={
              <div>
                <h1>로그인 기능은 아직 구현 전</h1>
              </div>
            }
          />

          {/* 그 외 모든 매핑주소 */}
          <Route path="*" element={<h1>잘못된 주소입니다.</h1>}></Route>
        </Routes>
      </div>
    </div>
  );
}

export default RouterMain;
