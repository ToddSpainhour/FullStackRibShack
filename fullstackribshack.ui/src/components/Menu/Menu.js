import React, { useState, useEffect } from 'react';
import MenuData from '../../helpers/data/MenuData';
import SingleMenuCategoryCard from '../SingleMenuCategoryCard/SinlgeMenuCategoryCard';

import './Menu.scss';

function Menu() {
  const [menuCategories, setMenuCategories] = useState('');

  const getMenuCategories = () => {
    // console.log('inside getMenuCategories');
    MenuData.getAllMenuCategories()
      .then((response) => {
        console.error('response in Menu.js is:', response);
        setMenuCategories(response);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  if (menuCategories.length < 1) {
    getMenuCategories();
  }

  let printMenuCategories;

  if (menuCategories.length > 0) {
    printMenuCategories = menuCategories.map((category) => (
      <SingleMenuCategoryCard category={category} key={category.id}/>
    ));
  }

  return (
    <div className="Menu">
      <h2>Menu Component</h2>
      {printMenuCategories}
    </div>
  );
}

export default Menu;
