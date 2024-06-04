import React from "react";
import ReactDOM from "react-dom";

const HelloReact = () => {
  return (
    <div>
      <h1>Hello, React!</h1>
    </div>
  );
};

document.addEventListener("DOMContentLoaded", () => {
  const node = document.getElementById("hello-react");
  ReactDOM.render(<HelloReact />, node);
});
