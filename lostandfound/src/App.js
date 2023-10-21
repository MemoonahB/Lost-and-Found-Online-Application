//import './App.css';
// import Footer from "./components/Footer"

import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

import NavigationBar from "./components/NavigationBar";
import Home from "./components/Home";
import Found from "./components/Found";
import Lost from "./components/Lost";
import ErrorBoundary from "./ErrorBoundary";

function App() {
  return (
    <ErrorBoundary>
    <Router>
    
      {/* <Footer/> */}
      <NavigationBar />

      <Routes>
        <Route exact path="/" element={<Home />} />
          
        <Route  path="/found" element={<Found />}/>
          
        
        <Route  path="/lost" element={<Lost />}/>
          
        
      </Routes>
      
    </Router>
    </ErrorBoundary>
  );
}

export default App;
