import MyNavbar from '../components/shared/MyNavbar/MyNavbar';
import Schedule from '../components/Schedule/Schedule';
import Menu from '../components/Menu/Menu';

import './App.scss';

function App() {
  return (
    <div className="App" id="app-component">
      <MyNavbar />
      <Menu />
      <Schedule />

    </div>
  );
}

export default App;
