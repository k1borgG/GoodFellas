import React from 'react';
import '../App.css';
import './Navbar.css';

function Navbar() {
  return (
        
            <div className='toper'>
                <img src='images/Logo.jpg' className='logo'></img>
                <div className='navigation'>
                    <a className='nav_item' href='/'>Главная</a>
                    <a className='nav_item' href="#2">О компании</a>
                    <a className='nav_item' href="#3">Инвестиции</a>
                    <a className='nav_item' href="#4">Контакты</a>
                </div>
                <div className='profile'>
                    <img src='images/Profile.svg'></img>
                    <a className='nav_item_2'>Вход</a>
                    <a className='nav_item_2'>Регистрация</a>
                </div>
            </div>
       
  );
}

export default Navbar;