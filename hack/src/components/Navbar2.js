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