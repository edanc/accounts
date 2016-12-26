import ReactDOM from 'react-dom';
import React from 'react'
import Records from './components/Records';

const Turbolinks = require("turbolinks");
Turbolinks.start();

require("jquery-ujs");

let App = {
  init() {
    document.addEventListener('turbolinks:load', () => {
      ReactDOM.render(<Records />, document.getElementById('records'));
    });

    document.addEventListener('turbolinks:before-render', () => {
      ReactDOM.unmountComponentAtNode(document.getElementById('records'));
    });
  }
}

module.exports = App;
