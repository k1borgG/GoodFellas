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
                        <select className='sell'>
                            <option className='opt' value="grapefruit">Тип</option>
                            <option className='opt' value="lime">Жилое</option>
                            <option className='opt' value="coconut">Коммерция</option>
                            <option className='opt' value="mango">Коттедж</option>
                            <option className='opt' value="mango">Парковки</option>
                        </select>
                        <select className='sell'>
                            <option className='opt' value="grapefruit">Цена</option>
                            <option className='opt' value="lime">$</option>
                            <option className='opt' value="coconut">$$</option>
                            <option className='opt' value="mango">$$$</option>
                        </select>
                        <select className='sell'>
                            <option className='opt' value="grapefruit">Доходность</option>
                            <option className='opt' value="lime">0-5%</option>
                            <option className='opt' value="coconut">6-15%</option>
                            <option className='opt' value="mango">больше 15%</option>
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