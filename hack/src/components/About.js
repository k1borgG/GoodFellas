import React from 'react';
import '../App.css';
//import { Link } from 'react-scroll';
import './About.css';

function About() {
    return (
         <div className='container'>
            <div className='about'>
                <div className='ab2'>
                    <a className='a1'>
                        О Компании
                    </a>
                    <a className='a2'>
                        GoodFellas – это инвестиционная платформа жилой и коммерческой недвижимости.
                    </a>
                    <a className='a3'>
                        GoodFEllas позволяет любому желающему инвестировать в качественные объекты жилой и коммерческой недвижимости.
                        Наши управляющие — профессионалы с успешным опытом работы на рынке. Фонд принес своим инвесторам 98,73% доходности в российских рублях и 73,6% в долларах США.
                        Покупка объектов осуществляется за счет средств множества инвесторов, что позволяет даже с небольшим капиталом получить доступ к классу активов.
                    </a>
                </div>
            </div> 
            <img src='images/mini_bg.jpg' className='img_2'></img>
         </div>
    );
  }
  
  export default About;