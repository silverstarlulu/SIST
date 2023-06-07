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
          <NavLink to="/about">About</NavLink>
        </li>
        <li>
          <NavLink to="/about/lee">About2</NavLink>
        </li>
      </ul>
    </div>
  );
}

export default Menu;
