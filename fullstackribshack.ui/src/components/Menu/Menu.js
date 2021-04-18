import React, { useState, useEffect } from 'react';
import MenuData from '../../helpers/data/MenuData';
import SingleMenuCategoryCard from '../SingleMenuCategoryCard/SinlgeMenuCategoryCard';

import './Menu.scss';

function Menu() {
  const [menuCategories, setMenuCategories] = useState('');
  // const [onlyCategories, setOnlyCategories] = useState('');

  const getMenuCategories = () => {
    // console.log('inside getMenuCategories');
    MenuData.getAllMenuCategories()
      .then((response) => {
        setMenuCategories(response);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  if (menuCategories.length < 1) {
    getMenuCategories();
  }

  let printMenuCategories;

  // if (menuCategories.length > 0) {
  //   printMenuCategories = menuCategories.map((category) => (
  //     <SingleMenuCategoryCard category={category} key={category.id}/>
  //   ));
  // }

  const menuCategoriesAndIds = [];

  if (menuCategories.length > 0) {
    // console.error('props.menuCategories above filter:', menuCategories);
    menuCategories.map((category) => menuCategoriesAndIds.push(category.menuCategory));
    // menuCategories.map((category) => menuCategoriesAndIds.push({ menuCategory: category.menuCategory }));
    // console.error('menuCategoriesAndIds', menuCategoriesAndIds);
    const onlyUnique = [...new Set(menuCategoriesAndIds)];
    console.error('onlyUnique', onlyUnique);

    printMenuCategories = onlyUnique.map((menuCategory) => (
      <SingleMenuCategoryCard menuCategory={menuCategory}/>
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
