import React from 'react';

import './SingleMenuItemCard.scss';

function SingleMenuItemCard(props) {
  // if menuDetails.menuCategory === menuCategory ..print it
  // let menuItem;
  // if (props.menuDetails.menuCategory !== props.menuCategory) {
  //   menuItem = <p>{props.menuDetails.name}</p>;
  // }
  return (
    <div className="SingleMenuItemCard">
      <p>Single Menu Item</p>
      {/* {menuItem} */}
    </div>
  );
}

export default SingleMenuItemCard;
