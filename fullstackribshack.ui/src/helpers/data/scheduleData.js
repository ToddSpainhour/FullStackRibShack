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

export default { getNextFiveScheduledEvents };
