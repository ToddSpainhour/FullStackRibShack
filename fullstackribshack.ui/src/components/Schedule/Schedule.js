import React, { useState, useEffect } from 'react';
import axios from 'axios';
import baseUrl from '../../helpers/data/constants';

import './Schedule.scss';

function Schedule() {
  const [events, setAllScheduledEvents] = useState('');

  const getAllScheduledEvents = () => {
    axios.get(`${baseUrl}/schedule`)

      .then((response) => {
        const AllEvents = response.data;
        setAllScheduledEvents(AllEvents);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  useEffect(() => {
    getAllScheduledEvents();
  }, []);

  if (events.length > 0) {
    return (
      <div className="Schedule">
          <h6>Schedule component</h6>
          <h6>{events[0].timeOpen}</h6>
      </div>
    );
  }
  return (<h3>Loading...</h3>);
}

export default Schedule;
