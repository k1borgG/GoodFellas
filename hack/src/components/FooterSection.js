import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './FooterSection.css';

function FooterSection() {
    return (
         <div className='container'>
            <div className='app'>
                <div className='zagolovok'>
                    <a className='z1'>Приложение GoodFellas</a>
                    <a className='z2'>С помощью приложения GoodFellas вы можете инвестировать и отслеживать последние новости рынка.</a>
                </div>
                <div className='comunity'>
                    <img src='images/Group1.png' className='i1'></img>
                    <img src='images/Group2.png' className='i2'></img>
                </div>
            </div> 
            <div className='contacts'>
                <div className='frame'>
                    <a className='con'>Контакты</a>
                    <div className='cont'>
                        <div className='phone'>
                            <img src='images/phone.png' className='i3'></img>
                            <a className='tekst'>+7 918 991-16-07</a>
                        </div>
                        <div className='email'>
                            <img src='images/email.png' className='i4'></img>
                            <a className='tekst2'>GoodFellas@yandex.ru</a>
                        </div>
                    </div>
                </div>
            </div> 
            <div className='foot'>
                <img src='images/Logo.jpg' className='lo'></img>
                <a className='f'>2023 © Все права защищены</a>
            </div>
         </div>
    );
  }
  
  export default FooterSection;