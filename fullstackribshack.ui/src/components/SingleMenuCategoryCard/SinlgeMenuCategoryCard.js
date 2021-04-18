import React from 'react';
import SingleMenuItemCard from '../SingleMenuItemCard/SingleMenuitemCard';

import './SingleMenuCategoryCard.scss';

function SingleMenuCategoryCard(props) {
  return (
    <div className='SingleMenuCategoryCard col-4'>
      <p>{props.menuCategory}</p>
      {/* <p className="menu-category-title">{props.category.menuCategory}</p> */}
      {/* <SingleMenuItemCard category={props.category}/> */}
      {/* <p className="menu-category-title">{props.category.name}</p>
      <p className="menu-category-title">{props.category.price}</p>
      <p className="menu-category-title">{props.category.description}</p> */}
    </div>
  );
}

export default SingleMenuCategoryCard;
