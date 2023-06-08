import React from "react";
import Title from "./components/Title";
import Info from "./components/Info";
import Menu from "./components/Menu";
import { Route, Routes } from "react-router-dom";
import Board from "./board/Board";
import Main from "./components/Main";
import Shop from "./shop/Shop";
import About from "./components/About";
import Login from "./login/Login";
import Member from "./member/Member";
import { ShopDetail, ShopForm } from "./shop";

function RouterMain(props) {
  return (
    <div>
      <div className="title">
        <Title />
      </div>
      <div className="info">
        <Info />
      </div>
      <div className="menu">
        <Menu />
      </div>
      <div className="main">
        <Routes>
          <Route path="/" element={<Main />} />

          <Route path="/shop/list" element={<Shop />} />
          <Route path="/shop/form" element={<ShopForm />} />
          <Route path="/shop/detail/:num" element={<ShopDetail />} />

          <Route path="/board/list" element={<Board />} />
          <Route path="/about" element={<About />} />
          <Route path="/login" element={<Login />} />
          <Route path="/member/form" element={<Member />} />

          <Route path="*" element={<h1>주소를 확인해주세요.</h1>} />
        </Routes>
      </div>
    </div>
  );
}

export default RouterMain;
