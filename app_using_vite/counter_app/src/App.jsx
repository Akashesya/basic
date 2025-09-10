import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

// function App() {
//    const [count, setCount] = useState(0)
//   return (
//     <> 
//       <div>
//         <a href="https://vite.dev" target="_blank">
//           <img src={viteLogo} className="logo" alt="Vite logo" />
//         </a>
//         <a href="https://react.dev" target="_blank">
//           <img src={reactLogo} className="logo react" alt="React logo" />
//         </a>
//       </div>
//       <h1>Vite + React</h1>
//       <div className="card">
//         <button onClick={() => setCount((count) => count + 1)}>
//           count is {count}
//         </button>
//          <button onClick={() => setCount((count) => count - 1)}>
//           count is {count}
//         </button>
//         <p>
//           Edit <code>src/App.jsx</code> and save to test HMR
//         </p>
//       </div>
//       <p className="read-the-docs">
//         Click on the Vite and React logos to learn more
//       </p>
//     </>
//   )
// }
//   var x=5;
//   console.log(x);
//   var x=6;
//   console.log(x);
//   const add=(a,b)=>a+b;
//   console.log(add(5,7));
//  const user={name:"Akku"};
//   const{name:username,age:newage=12}=user;
//   console.log(username);
//   console.log(newage);
// var a=1,b=2;
// [a,b]=[b,a];
// console.log(a);
// console.log(b);
// var prev={name:'A',age:20};
// var next={...prev,age:30};
// console.log(next);
// console.log(prev);

// var new=(...prev);
// console.log(new===prev);

// const new=prev;
// console.log(new);


//  const names="Akku";
// const msg=`Hello ${names}`;
// console.log(msg);

// object proprty shorthand
//  const name="Akku";
//  const age=20;
//   const user={name,age};
//   console.log(user.age);

  //method shorthand
  // const user1={
  //   name:"Akku",
  //   age:20,
  //   greet(){
  //     console.log("Hello");
  //   }
  // }
  // user1.greet();

  //Array methods-map,filter,reduce
  //  const arr=[1,2,3,4,5];
  //  const newarr=arr.map((num)=>num*num);
  //  console.log(newarr);
  //  const evenarr=arr.filter((num)=>num%2===0);
  //  console.log(evenarr);
  //  const sum=arr.reduce((acc,cur)=>acc+cur,3);
  //  console.log(sum);

  //  const sum=arr.reduce((acc,cur)=>cur>acc?cur:acc);
  //  console.log(sum);





// function App(){
//   return (
//     <> 
      
//       <h2 id='a'>0</h2>
//       <button onClick={()=>{
//         const element=document.getElementById('a');
//         var curr=parseInt(element.textContent)
//         element.textContent=curr+1;
//       }}>increment</button>
//       <button onClick={()=>{
//         const element=document.getElementById('a');
//         var curr=parseInt(element.textContent)
//         element.textContent=curr-1;
//       }}>decrement</button>
//     </>
//   )
//}

//export default App

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
export default App

