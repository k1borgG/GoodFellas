import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './Blocks.css';
import Block from './Block'

import jsonObj from '../json_data/out_110622.json'



function Blocks() {
  const blockList = jsonObj['apartment'].map(key =>
    <li>{Block(key)}</li>
  );
  return (
        <div className='blocks'>
            <ul>{blockList}</ul>
        </div>
  );
}

export default Blocks;