import React, { useState, useEffect } from 'react';
import MenuData from '../../helpers/data/MenuData';
import SingleMenuCategoryCard from '../SingleMenuCategoryCard/SinlgeMenuCategoryCard';

import './Menu.scss';

function Menu() {
  const [menuDetails, setMenuDetails] = useState('');

  const getMenuDetails = () => {
    MenuData.getAllMenuCategories()
      .then((response) => {
        setMenuDetails(response);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  if (menuDetails.length < 1) {
    getMenuDetails();
  }

  let printMenuCategories;

  const menuCategoriesAndIds = [];

  // I need to only pass down menuDetails that apply to this menuCategory.Each category does not need access to the whole menu

  if (menuDetails.length > 0) {
    menuDetails.map((category) => menuCategoriesAndIds.push(category.menuCategory));

    const onlyUnique = [...new Set(menuCategoriesAndIds)];

    printMenuCategories = onlyUnique.map((menuCategory) => (
        <SingleMenuCategoryCard key={menuCategory} menuCategory={menuCategory} menuDetails={menuDetails}/>
    ));
  }

  return (
    <div className="Menu">
      <h2>Menu Component</h2>
      <div className="menu-category-container">
        {printMenuCategories}
      </div>
    </div>
  );
}

export default Menu;
