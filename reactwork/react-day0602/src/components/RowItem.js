import React from "react";

function RowItem({ content, dataDelete, index }) {
  const dataDeleteAction = (e) => {
    dataDelete(index);
  };
  return (
    <tr>
      <td>{content.writer}</td>
      <td>
        <img src={`../image/${content.photo}.jpg`} style={{ width: "100px" }} />
      </td>
      <td>{content.subject}</td>
      <td>{content.today.toLocaleDateString("ko-kr")}</td>
      <td>
        <button
          type="button"
          className="btn btn-info"
          onClick={dataDeleteAction}
        >
          삭제
        </button>
      </td>
    </tr>
  );
}

export default RowItem;
