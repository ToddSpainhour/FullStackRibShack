import React from 'react';
import SingleMenuItemCard from '../SingleMenuItemCard/SingleMenuitemCard';

import './SingleMenuCategoryCard.scss';

function SingleMenuCategoryCard(props) {
  const MenuItems = props.menuDetails.filter((menuItem) => menuItem.menuCategory === props.menuCategory);

  const printSingleMeuItemCards = MenuItems.map((singleMenuItem) => (
  <SingleMenuItemCard key={singleMenuItem.id} menuCategory={props.menuCategory} singleMenuItem={singleMenuItem} />
  ));

  return (
    <div className='SingleMenuCategoryCard col-4'>
      <h3>{props.menuCategory}</h3>
      {printSingleMeuItemCards}
    </div>
  );
}

export default SingleMenuCategoryCard;
