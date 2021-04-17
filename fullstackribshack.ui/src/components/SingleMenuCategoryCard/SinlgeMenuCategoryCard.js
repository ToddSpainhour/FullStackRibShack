import React from 'react';

import './SingleMenuCategoryCard.scss';

function SingleMenuCategoryCard(props) {
  return (
    <div className='SingleMenuCategoryCard'>
      <p>{props.category.menuCategory}</p>
    </div>
  );
}

export default SingleMenuCategoryCard;
