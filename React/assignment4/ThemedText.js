import React from 'react';
import { useTheme } from './ThemeContext';

const ThemedText = () => {
  const { theme } = useTheme();

  const getStyle = () => {
    if (theme === 'light') {
      return { background: 'white', color: 'black' };
    } else {
      return { background: 'black', color: 'white' };
    }
  };

  return (
    <p style={{ ...getStyle(), padding: '20px', borderRadius: '5px' }}>
      Hello Students! This text changes based on the theme.
    </p>
  );
};

export default ThemedText;