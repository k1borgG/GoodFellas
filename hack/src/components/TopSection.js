import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './TopSection.css';

function TopSection() {
  return (
        <div className='top'>
            <div className='offer'>
                <div className='info'>
                    <a className='zagalovok'>Инвестируй с GoodFellas</a>
                    <a className='zagalovok2'>Инвестиционная платформа 
                                              жилой и коммерческой недвижимости, 
                                              позволяющая любому инвестору вкладывать деньги. </a>
                </div> 
                <div className='poisk'>
                    <div className='category'>
                        <select className='sel'>
                            <option className='opt' value="grapefruit">Грейпфрут</option>
                            <option className='opt' value="lime">Лайм</option>
                            <option className='opt' value="coconut">Кокос</option>
                            <option className='opt' value="mango">Манго</option>
                        </select>
                        <select className='sel'>
                            <option className='opt' value="grapefruit">Грейпфрут</option>
                            <option className='opt' value="lime">Лайм</option>
                            <option className='opt' value="coconut">Кокос</option>
                            <option className='opt' value="mango">Манго</option>
                        </select>
                        <select className='sel'>
                            <option className='opt' value="grapefruit">Грейпфрут</option>
                            <option value="lime">Лайм</option>
                            <option value="coconut">Кокос</option>
                            <option value="mango">Манго</option>
                        </select>
                        <select className='sel'>
                            <option value="grapefruit"></option>
                            <option className='opt' value="lime">Лайм</option>
                            <option className='opt' value="coconut">Кокос</option>
                            <option className='opt' value="mango">Манго</option>
                        </select>
                    </div>
                    <a href="/catalog">
                        <button className='but'>
                            <div className='bt_name'>Найти</div>
                        </button>  
                    </a>
                </div>
            </div>
        </div>
  );
}

export default TopSection;