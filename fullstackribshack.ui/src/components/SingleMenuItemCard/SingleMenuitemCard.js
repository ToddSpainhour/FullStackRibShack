import React from 'react';

import './SingleMenuItemCard.scss';

function SingleMenuItemCard(props) {
  return (
    <div className="SingleMenuItemCard">
      <h6>{props.singleMenuItem.name}</h6>
      <p>{props.singleMenuItem.description}</p>
      <p>{props.singleMenuItem.price}</p>
    </div>
  );
}

export default SingleMenuItemCard;
