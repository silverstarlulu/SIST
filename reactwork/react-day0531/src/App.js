import logo from "./logo.svg";
import "./App.css";
import { useState } from "react";
import OneApp from "./components/OneApp";
import TwoApp from "./components/TwoApp";
import ThreeApp from "./components/ThreeApp";
import FourApp from "./components/FourApp";
import FiveApp from "./components/FiveApp";
import SixApp from "./components/SixApp";

function App() {
  const [index, setIndex] = useState(1);

  return (
    <div className="App">
      <b style={{ fontSize: "40px" }}>컴포넌트 선택하기</b>
      <select
        onChange={(e) => {
          setIndex(Number(e.target.value));
        }}
      >
        <option value="1" selected>
          OneApp
        </option>
        <option value="2">TwoApp</option>
        <option value="3">ThreeApp</option>
        <option value="4">FourApp</option>
        <option value="5">FiveApp</option>
        <option value="6">SixApp</option>
      </select>

      {index === 1 ? (
        <OneApp />
      ) : index === 2 ? (
        <TwoApp />
      ) : index === 3 ? (
        <ThreeApp />
      ) : index === 4 ? (
        <FourApp />
      ) : index === 5 ? (
        <FiveApp />
      ) : (
        <SixApp />
      )}
    </div>
  );
}

export default App;
