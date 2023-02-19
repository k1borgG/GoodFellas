import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './Recomend.css';

import jsonObj from '../json_data/data2.json'
var userObj = JSON.parse(JSON.stringify(jsonObj));

var blockList = userObj.apartment.map(key =>
    <li className='card'> 
        <div className='block'>
            <div className='block_img'>   
                <img src={key.apartment_info.apart_img}></img>
            </div>
            <div className='block_JK'>   
                Название: {key.apartment_info.apart_name}
            </div>
            <div className='opisan'>
                <div className='block_category'>   
                    Категория: {key.category}
                </div>
                <div className='block_type'>   
                    тип: {key.apartment_info.spec.apart_spec}
                </div>
                <div className='block_floor'>   
                    размещение: {key.apartment_info.spec.apart_floor}
                </div>
                <div className='block_cost'>
                    Цена за 1кв.м: {key.apartment_info.spec.apart_price.toLocaleString('ru-RU')}
                </div> 
                <div className='block_profit'>
                    Доходность: {Math.floor(key.apartment_info.spec.apart_price/key.apartment_info.spec.apart_profit)}%
                </div>
            </div>
            <button className='bt_invest'>
                <div className='tx'>Инвестировать</div>
            </button>
        </div>  
    </li>
  );

function Recomend() {
    return (
        <div className='container'>
            <div className='cont_rec'>
                <a className="title">Рекомендации</a>
            </div>
            <div className="box_items">
                <div className='blocks'>
                    <ul>{blockList.slice(130,133)}</ul>
                </div>
            </div>
        </div>
    );
  }

  export default Recomend;