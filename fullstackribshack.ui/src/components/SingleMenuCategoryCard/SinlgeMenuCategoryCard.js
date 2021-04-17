import React from 'react';

import './SingleMenuCategoryCard.scss';

function SingleMenuCategoryCard(props) {
  return (
    <div className='SingleMenuCategoryCard col-4'>
      <p className="menu-category-title">{props.category.menuCategory}</p>
    </div>
  );
}

export default SingleMenuCategoryCard;
