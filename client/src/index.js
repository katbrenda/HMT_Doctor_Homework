import React from "react";
import ReactDOM from "react-dom";
import "./index.css";
import App from "./App";
import reportWebVitals from "./reportWebVitals";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import About from "./pages/About";
import DataProvider from "./providers/DataProvider";
import Home from "./pages/Home";
import Patients from "./pages/Patients";
import Physicians from "./pages/Physicians";
import Appointments from "./pages/Appointments";


const NotFound = ()=>{
  return <p>path not found</p>
}
ReactDOM.render(
  <DataProvider>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<App />}>
          <Route path="/about" element={<About />} />
          <Route index path="/home" element={<Home />} />
          <Route path="/patients" element={<Patients />} />
          <Route path="/physicians" element={<Physicians />} />
          <Route path="/appointments" element={<Appointments />} />
          <Route path="*" element={<NotFound />} />
        </Route>
      </Routes>
    </BrowserRouter>
  </DataProvider>,
  document.getElementById("root")
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
