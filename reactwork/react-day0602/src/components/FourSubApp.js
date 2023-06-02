import React from "react";

function FourSubApp(props) {
  console.dir(props);

  return (
    <div>
      <h3>FourApp의 자식</h3>

      <div>
        {props.name}님의 나이는 {props.age}살 입니당.
      </div>
    </div>
  );
}

export default FourSubApp;
