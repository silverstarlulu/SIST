import React from "react";
import { NavLink } from "react-router-dom";
import "../App.css";

function Menu(props) {
  return (
    <div>
      <ul className="menu">
        <li>
          <NavLink to="/">HOME</NavLink>
        </li>
        <li>
          <NavLink to="/shop/list">SHOP</NavLink>
        </li>
        <li>
          <NavLink to="/board/list">BOARD</NavLink>
        </li>
        <li>
          <NavLink to="/about">ABOUT</NavLink>
        </li>
        <li>
          <NavLink to="/login">LOGIN</NavLink>
        </li>
        <li>
          <NavLink to="/member/form">RESGISTER</NavLink>
        </li>
      </ul>
    </div>
  );
}

export default Menu;
