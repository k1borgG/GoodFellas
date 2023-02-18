import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './TopSection.css';

function TopSection() {
  return (
        <div className='top'>
            <div className='toper'>
                <img src='images/Logo.jpg'></img>
                <div className='navigation'>
                {/* <Link to="Home" className="navbar__logo">
                    <img src="images/svg/logo.svg" alt="Logo" />
                </Link> */}
                    <a className='nav_item'>Главная</a>
                    <a className='nav_item'>О компании</a>
                    <a className='nav_item'>Инвестиции</a>
                    <a className='nav_item'>Контакты</a>
                </div>
                <div className='profile'>
                    <img src='images/Profile.svg'></img>
                    <a className='nav_item_2'>Вход</a>
                    <a className='nav_item_2'>Регистрация</a>
                </div>
            </div>
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
                    <button className='but'>
                        <div className='bt_name'>Найти</div>
                    </button>  
                </div>
            </div>
        </div>
  );
}

export default TopSection;