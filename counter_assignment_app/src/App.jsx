import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'


// Reusable Button component
const Button = ({ label, onClick }) => {
  return (
    <button onClick={onClick}>
      {label}
    </button>
  );
};

// Main App component
function App() {
  const handleIncrement = () => {
    const element = document.getElementById('a');
    const curr = parseInt(element.textContent);
    element.textContent = curr + 1;
    console.log("Increment clicked");
  };
  
  const handleDecrement = () => {
    const element = document.getElementById('a');
    const curr = parseInt(element.textContent);
    element.textContent = curr - 1;
    console.log("Decrement clicked");
  };
  
  return (
    <> 
      <h2 id='a'>0</h2>
      <Button label="Increment" onClick={handleIncrement} />
      <Button label="Decrement" onClick={handleDecrement} />
    </>
  );
};
export default App
