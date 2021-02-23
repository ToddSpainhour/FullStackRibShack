import axios from 'axios';
import baseUrl from './constants';

const getNextFiveScheduledEvents = () => new Promise((resolve, reject) => {
  let AllEvents = [];
  axios.get(`${baseUrl}/schedule/nextFiveScheduledEvents`)
    .then((response) => {
      AllEvents = response.data;
      resolve(AllEvents);
    })
    .catch((error) => reject(error));
});

const getAllFutureScheduledEvents = () => new Promise((resolve, reject) => {
  let AllFutureEvents = [];
  axios.get(`${baseUrl}/schedule/allFutureEvents`)
    .then((response) => {
      AllFutureEvents = response.data;
      resolve(AllFutureEvents);
    })
    .catch((error) => reject(error));
});

export default { getNextFiveScheduledEvents, getAllFutureScheduledEvents };
