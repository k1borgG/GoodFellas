import React from 'react';
import Navbar  from './Navbar';
import TopSection from './TopSection';
import './HeadSection.css';

function HeadSection() {
  return (
    <header className="HeadSection" id="Home">
      <Navbar />    
      <TopSection />
    </header>
  );
}

export default HeadSection;