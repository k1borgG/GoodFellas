import React from "react";
import ReactDOM from "react-dom/client";
import {
  createBrowserRouter,
  RouterProvider,
} from "react-router-dom";
import "./index.css";
import App from './routes/App';
import Catalog from "./routes/Catalog";

const router = createBrowserRouter([
  {
    path: "/",
    element: <App/>
  },
  {
    path: "/catalog",
    element: <Catalog/>
  },
]);

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);