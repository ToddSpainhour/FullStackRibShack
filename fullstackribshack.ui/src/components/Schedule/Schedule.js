import React, { useState, useEffect } from 'react';
import scheduleData from '../../helpers/data/scheduleData';
import SingleScheduleCard from '../SingleScheduleCard/SingleScheduleCard';

import './Schedule.scss';

function Schedule() {
  const [nextFiveScheduledEvents, setNextFiveScheduledEvents] = useState('');
  const [allFutureEvents, setAllFutureEvents] = useState('');
  // eslint-disable-next-line prefer-const
  let [onlyViewingNextFiveEvents, setOnlyViewingNextFiveEvents] = useState(true);

  const getNextFiveEvents = () => {
    scheduleData.getNextFiveScheduledEvents()
      .then((response) => {
        setNextFiveScheduledEvents(response);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  const getAllFutureEvents = () => {
    scheduleData.getAllFutureScheduledEvents()
      .then((response) => {
        setAllFutureEvents(response);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  const handleAllFutureEvents = () => {
    setOnlyViewingNextFiveEvents(() => !onlyViewingNextFiveEvents);
  };

  const currentScheduleView = () => {
    if (onlyViewingNextFiveEvents === true) {
      getNextFiveEvents();
    } else {
      getAllFutureEvents();
    }
  };

  let toggleScheduledEventsViewButton;

  if (onlyViewingNextFiveEvents) {
    toggleScheduledEventsViewButton = <button onClick={handleAllFutureEvents} className="btn change-schedule-view-btn">See More Events</button>;
  } else {
    toggleScheduledEventsViewButton = <button onClick={handleAllFutureEvents} className="btn change-schedule-view-btn">See Less Events</button>;
  }

  let printScheduleCards;

  useEffect(() => {
    currentScheduleView();
  }, [onlyViewingNextFiveEvents]);

  if (onlyViewingNextFiveEvents === true && nextFiveScheduledEvents.length > 0) {
    printScheduleCards = nextFiveScheduledEvents.map((event) => (
      <SingleScheduleCard event={event} key={event.id}/>
    ));
  } else if (onlyViewingNextFiveEvents === false && allFutureEvents.length > 0) {
    printScheduleCards = allFutureEvents.map((event) => (<SingleScheduleCard event={event} key={event.id}/>));
  } else {
    return <h3>Loading...</h3>;
  }

  if (nextFiveScheduledEvents.length > 0 || allFutureEvents.length > 0) {
    return (
      <div className="Schedule" id="schedule-component">
        <div className="schedule-greeting">
          <h5>Check out our Schedule</h5>
        </div>
        <div className="schedule-cards-container">
          {printScheduleCards}
        </div>
          <div className="change-schedule-view-btn-container">
            {toggleScheduledEventsViewButton}
          </div>
      </div>
    );
  }
  return (<h3>Loading...</h3>);
}

export default Schedule;
