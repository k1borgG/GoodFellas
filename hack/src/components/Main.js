import React,{useState,useEffect} from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './Main.css';

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

 


function Main() {
    const [value,setValue] = useState('')
//    var a = userObj.apartment.apartment_info;
    // const filteredSearch = userObj.filter((a)=>{console.log( a.apart_name.toLowerCase().includes(value.toLowerCase))
    // })

  return (
        <div className='container_main'>
            <div className='pois_cont'>
                <div className='search'>
                    <input className='inp'  type='text' placeholder='Введите Название'
                    onChange={(event) => setValue(event.target.value)}/>
                </div>
                <div className='vibor'>
                    <div className='categoria'>
                        <select className='sell'>
                            <option className='opt' value="grapefruit">Грейпфрут</option>
                            <option className='opt' value="lime">Лайм</option>
                            <option className='opt' value="coconut">Кокос</option>
                            <option className='opt' value="mango">Манго</option>
                        </select>
                        <select className='sell'>
                            <option className='opt' value="grapefruit">Грейпфрут</option>
                            <option className='opt' value="lime">Лайм</option>
                            <option className='opt' value="coconut">Кокос</option>
                            <option className='opt' value="mango">Манго</option>
                        </select>
                        <select className='sell'>
                            <option className='opt' value="grapefruit">Грейпфрут</option>
                            <option className='opt' value="lime">Лайм</option>
                            <option className='opt' value="coconut">Кокос</option>
                            <option className='opt' value="mango">Манго</option>
                        </select>
                        <select className='sell'>
                            <option className='opt' value="grapefruit">Грейпфрут</option>
                            <option className='opt' value="lime">Лайм</option>
                            <option className='opt' value="coconut">Кокос</option>
                            <option className='opt' value="mango">Манго</option>
                        </select>
                    </div>
                </div>
                <button className='buttt'>
                    <div className='button_name'>Найти</div>
                </button>  
            </div>
            <div className="box_items">
                <div className='blocks'>
                    <ul className='wr'>{blockList}</ul>
                </div>
            </div>
        </div>
  );
}

export default Main;