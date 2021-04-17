import axios from 'axios';
import baseUrl from './constants';

const getAllMenuCategories = () => new Promise((resolve, reject) => {
  let allMenuCategories = [];
  axios.get(`${baseUrl}/menuCategories`)
    .then((response) => {
      allMenuCategories = response.data;
      resolve(allMenuCategories);
    })
    .catch((error) => reject(error));
});
export default { getAllMenuCategories };
