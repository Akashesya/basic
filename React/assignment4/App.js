import React from 'react';
import { ThemeProvider } from './ThemeContext';
import ThemeSwitcher from './ThemeSwitcher';
import ThemedText from './ThemedText';
import './App.css'; 

function App() {
  return (
    <ThemeProvider>
      <div className="App">
        <h1>Theme Switcher App</h1>
        <ThemeSwitcher />
        <ThemedText />
      </div>
    </ThemeProvider>
  );
}

export default App;