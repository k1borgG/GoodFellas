import React from 'react';
import '../App.css';
import './Navbar2.css';

function Navbar2() {
  return (
        
            <div className='toper'>
                <img src='images/Logo.jpg' className='logo'></img>
                <div className='navigation'>
                    <a className='nav_item_bl' href='/'>Главная</a>
                    <a className='nav_item_bl'>О компании</a>
                    <a className='nav_item_bl'>Инвестиции</a>
                    <a className='nav_item_bl'>Контакты</a>
                </div>
                <div className='profile'>
                    <img src='images/Profile_bl.png'></img>
                    <a className='nav_item_2_bl'>Вход</a>
                    <a className='nav_item_2_bl'>Регистрация</a>
                </div>
            </div>
       
  );
}

export default Navbar2;
import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './Navbar2.css';

function Navbar2() {
  return (
        
            <div className='toper'>
                <img src='images/Logo.jpg' className='logo'></img>
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
                    <img src='images/Profile_bl.png'></img>
                    <a className='nav_item_2'>Вход</a>
                    <a className='nav_item_2'>Регистрация</a>
                </div>
            </div>
       
  );
}

export default Navbar2;