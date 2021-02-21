import axios from 'axios';
import baseUrl from './constants';

const getAllScheduledEvents = () => new Promise((resolve, reject) => {
  let AllEvents = [];
  axios.get(`${baseUrl}/schedule`)
    .then((response) => {
      AllEvents = response.data;
      resolve(AllEvents);
    })
    .catch((error) => reject(error));
});

export default { getAllScheduledEvents };
