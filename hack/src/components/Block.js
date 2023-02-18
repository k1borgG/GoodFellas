import React from 'react';

function Block(key) {
    return (
        <div className='block'>
            {/* <img src="images/picture_2.jpeg"/> */}
            <div className='block_JK'>
                name: {key['apart_name']}
            </div>
            {/* <div className='block_cost'>
                cost: {key['specs.floors.apart_price']}
            </div> */}
        </div>
    );
}

export default Block;
