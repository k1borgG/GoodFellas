import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import { Button } from './Button';
import './TopSection.css';

function TopSection() {
  return (
    <section className="top">
      <img src="images/topBack.jpg" alt="image"></img>
      <div className="bg" />
      <div className="top__container">
        <div className="top__content">
          <div className="top__content-right">
            
            {/* <Link to="rates">*/}
              <Button buttonStyle="btn--primary" buttonSize="btn--medium">
                Тарифы
              </Button>
            {/*</Link> */}
          </div>
        </div>
      </div>
    </section>
  );
}

export default TopSection;