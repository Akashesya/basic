import React from 'react';
import { useTheme } from './ThemeContext';

const ThemeSwitcher = () => {
  const { theme, toggleTheme } = useTheme();

  return (
    <button onClick={toggleTheme}>
      Toggle Theme ({theme === 'light' ? 'Dark Mode' : 'Light Mode'})
    </button>
  );
};

export default ThemeSwitcher;