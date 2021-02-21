import React from 'react';

import '../../styles/_variables.scss';

function SingleScheduleCard(props) {
  return (
    <div>
    <p>{props.event.location}</p>
    <p>{props.event.date}</p>
    <p>{props.event.timeOpen}</p>
    <p>{props.event.timeClosed}</p>
    </div>
  );
}

export default SingleScheduleCard;
