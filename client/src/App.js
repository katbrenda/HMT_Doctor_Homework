import { Link, Outlet } from "react-router-dom";

function App() {
  return (
    <div>
      <nav
        style={{
          padding: "0 20px",
          borderBottom: "1px solid",
          display: "flex",
          justifyContent: "space-between",
          alignItems: "center",
        }}
      >
        <h1>Starter App</h1>
        <nav>
          <Link to="/home">Home&nbsp;</Link>
          <Link to="/about">About&nbsp;</Link>
          <Link to="/physicians">Physicians&nbsp;</Link>
          <Link to="/patients"> Patients&nbsp;</Link>
          <Link to="/appointments"> Appointments&nbsp;</Link>

        </nav>
      </nav>
      <div
        style={{
          padding: "0 20px",
        }}
      >
        <Outlet />
      </div>
    </div>
  );
}

export default App;
