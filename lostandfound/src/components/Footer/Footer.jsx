import React from 'react';
import { BrowserRouter as Router, Link } from 'react-router-dom';
import { Container, Row, Col, InputGroup, FormControl } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css'; // Import Bootstrap CSS
import './Footer.css'; // Import your custom CSS file

function App() {
  return (
    <Router>
      <div className="text-bg-dark py-4 my-4">
        <Container max-width="xxl">
          <Row>
            <Col>
              <h3>HELP</h3>
              <p>Your help, our pleasure</p>
            </Col>
            <Col>
              <h3>Components</h3>
              <p> <Link to="/" className="red-link">Home</Link></p>
          <p>  <Link to="/about">About us</Link></p>
             <p>  <Link to="/lost">Lost Items</Link></p>
             <p> <Link to="/found">Found Items</Link></p>
            
            
             
            </Col>
            <Col>
              <h3>Contact</h3>
              <p><a href="mailto:sidrashafique@gmail.com">sidrashafique@gmail.com</a></p>
              <InputGroup className="mb-3">
                <FormControl placeholder="Email Input" />
              </InputGroup>
            </Col>
          </Row>
        </Container>
      </div>
    </Router>
  );
}

export default App;
