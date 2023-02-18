import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './Recomend.css';

import jsonObj from '../json_data/out_1.json'
var userObj = JSON.parse(JSON.stringify(jsonObj));

console.log(userObj.apartment[0].specs[0].floors[0].apart_price)

var blockList = userObj.apartment.map(key =>
    <li> 
        <div className='block'>
            <div className='block_JK'>   
                Название: {key['apart_name']}
            </div>
            <div className='block_type'>   
                тип кв: {key.specs[0].apart_spec}
            </div>
            <div className='block_floor'>   
                этаж(и): {key.specs[0].floors[0].apart_floor}
            </div>
            <div className='block_cost'>
                Цена за 1кв.м: {key.specs[0].floors[0].apart_price}
            </div> 
        </div>

    </li>
  );
// var blockList = userObj.apartment.map(key =>
//     <li> 
//         <div className='block'>
//             <div className='block_JK'>   
//                 Название: {key['apart_name']}
//             </div>
//             <div className='block_type'>   
//                 тип кв: {key.specs[0].apart_spec}
//             </div>
//             <div className='block_floor'>   
//                 этаж(и): {key.specs[0].floors[0].apart_floor}
//             </div>
//             <div className='block_cost'>
//                 Цена за 1кв.м: {key.specs[0].floors[0].apart_price}
//             </div> 
//         </div>

//     </li>
//   );


function Recomend() {
    return (
        <div className='container'>
            <div className='cont_rec'>
                <a className="title">Рекомендации</a>
            </div>
            <div className="box_items">
                <div className='blocks'>
                    <ul>{blockList}</ul>
                </div>
            </div>
        </div>
    );
  }

  export default Recomend;