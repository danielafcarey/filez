import React from 'react';
import { render } from 'react-dom';
import { BrowserRouter as Router} from 'react-router-dom';
import { Provider } from 'react-redux';
import { createStore } from 'redux';
import { rootReducer } from './reducers';
import App from './components/App/App';
import './index.css';

const devTools = window.__REDUX_DEVTOOLS_EXTENSION__ && 
  window.__REDUX_DEVTOOLS_EXTENSION__();
// const store = createStore(rootReducer, devTools);

render(
  <Provider store={store} >
    <Router>
      <App />
    </Router>
  </Provider>,

  document.getElementById('root')
);
