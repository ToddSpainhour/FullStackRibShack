import React, { useState, useEffect } from 'react';
// import axios from 'axios';
import scheduleData from '../../helpers/data/scheduleData';
// import baseUrl from '../../helpers/data/constants';
import SingleScheduleCard from '../SingleScheduleCard/SingleScheduleCard';

import './Schedule.scss';

function Schedule() {
  const [events, setAllScheduledEvents] = useState('');

  const getAllScheduledEvents = () => {
    scheduleData.getAllScheduledEvents()
      .then((response) => {
        setAllScheduledEvents(response);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  let printScheduleCards;

  useEffect(() => {
    getAllScheduledEvents();
  }, []);

  if (events.length > 0) {
    printScheduleCards = events.map((event) => (
      <SingleScheduleCard event={event} key={event.id}/>
    ));
  } else {
    return <h3>Loading...</h3>;
  }

  if (events.length > 0) {
    return (
      <div className="Schedule">
        <div className="schedule-greeting">
          <h5>Check out our Schedule</h5>
        </div>
          {printScheduleCards}
      </div>
    );
  }
  return (<h3>Loading...</h3>);
}

export default Schedule;
