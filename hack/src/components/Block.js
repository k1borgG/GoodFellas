import React from 'react';

function Block(key) {
    return (
        <div className='block'>
            <img src=""/>
            <div className='block_geo'>
                name: {key['apart_name']}
            </div>
            <div className='block_year'>
                Год: 
            </div>
            <div className='block_cost'>
                Цена: 
            </div>
            <div className='block_profit'>
                Доходность:
            </div>
            <div className='block_recom'>
                Рекомендуемая цена акции:
            </div>
        </div>
    );
}

export default Block;