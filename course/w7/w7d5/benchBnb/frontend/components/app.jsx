import React from 'react';
import GreetingContainer from './greeting/greeting_container';

const App = (props) => (
  <div>
    <h1>Bench BnB</h1>
    <GreetingContainer />
    {props.children}
  </div>
);

export default App;
