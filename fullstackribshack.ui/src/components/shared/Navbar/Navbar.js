import React from 'react';

import './Navbar.scss';

function Navbar() {
  return (
    <nav className="navbar navbar-expand-lg navbar-light bg-light">
    <a className="navbar-brand" href="#app-component">Full Stack Rib Shack</a>
    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span className="navbar-toggler-icon"></span>
    </button>

    <div className="collapse navbar-collapse" id="navbarSupportedContent">
      <ul className="navbar-nav mr-auto">

        <li className="nav-item">
          <a className="nav-link" href="menu-component">Menu</a>
        </li>

        <li className="nav-item">
          <a className="nav-link" href="#schedule-component">Schedule</a>
        </li>

        <li className="nav-item">
          <a className="nav-link" href="#about-us-component">About Us</a>
        </li>

      </ul>
      <button className="btn btn-outline-dark my-2 my-sm-0" type="submit">Login</button>
    </div>
  </nav>
  );
}

export default Navbar;
