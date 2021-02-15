import Schedule from '../components/Schedule/Schedule';

import './App.scss';

function App() {
  return (
    <div className="App">
      <h2 className="title">This is inside the App.js component</h2>
      <div className="test-btn-container">
        <button className="btn btn-warning test-btn">Test Button</button>
      </div>
      <Schedule />
    </div>
  );
}

export default App;
