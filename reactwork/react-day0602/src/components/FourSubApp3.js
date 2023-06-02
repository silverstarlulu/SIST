import React from "react";

function FourSubApp3(props) {
  return (
    <div>
      <button
        type="button"
        className="btn btn-success"
        onClick={() => {
          props.incre();
        }}
      >
        증가
      </button>
      <button
        type="button"
        className="btn btn-info"
        style={{ marginLeft: "20px" }}
        onClick={() => {
          props.decre();
        }}
      >
        감소
      </button>
    </div>
  );
}

export default FourSubApp3;
