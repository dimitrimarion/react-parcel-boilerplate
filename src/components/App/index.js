import React from "react";
import "./index.css";
import dog from "@images/dog.jpg";

const App = () => {
  return (
    <main className="App">
      <h1>Hello World!</h1>
      <img src={dog} alt="" />
    </main>
  );
};

export default App;
