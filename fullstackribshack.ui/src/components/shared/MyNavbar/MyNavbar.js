import './MyNavbar.scss';
import { useState } from 'react';

function MyNavbar() {
  const [isNavbarCollapsed, setNavbarCollapsed] = useState(false);

  const handleNavbarCollapse = () => setNavbarCollapsed(!isNavbarCollapsed);

  return (

    <nav className="navbar navbar-expand-lg navbar-light bg-light">
  <a className="navbar-brand" href="app-component">Full Stack Rib Shack</a>
  <button className="navbar-toggler" type="button" onClick={handleNavbarCollapse} data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span className="navbar-toggler-icon"></span>
  </button>
  <div className={`${isNavbarCollapsed ? 'collapse' : ''} navbar-collapse`} id="navbarNav">
    <ul className="navbar-nav">
      <li className="nav-item active">
        <a className="nav-link">Menu<span className="sr-only"></span></a>
      </li>
      <li className="nav-item">
        <a className="nav-link" href="#schedule-component">Schedule</a>
      </li>
      <li className="nav-item">
        <a className="nav-link">About Us</a>
      </li>
    </ul>
  </div>
</nav>
  );
}

export default MyNavbar;
