import React from 'react';

import './SingleScheduleCard.scss';

function SingleScheduleCard(props) {
  return (
    <div className="SingleScheduleCard col-md-2 col-sm-12 myCard">
      <p className="location">{props.event.location}</p>
      <p>{props.event.date.slice(0, 10)}</p>
      <p>Time Open: {props.event.timeOpen}</p>
      <p>Time Closed: {props.event.timeClosed}</p>
    </div>
  );
}

export default SingleScheduleCard;
