import React from 'react';
import SingleMenuItemCard from '../SingleMenuItemCard/SingleMenuitemCard';

import './SingleMenuCategoryCard.scss';

function SingleMenuCategoryCard(props) {
  return (
    <div className='SingleMenuCategoryCard col-4'>
      <p>{props.menuCategory}</p>
      <SingleMenuItemCard menuCategory={props.menuCategory} menuDetails={props.menuDetails}/>
    </div>
  );
}

export default SingleMenuCategoryCard;
