import ReactDOM from 'react-dom';
import React from 'react'
import Records from './components/Records';

const Turbolinks = require("turbolinks");
Turbolinks.start();

require("jquery-ujs");

let App = {
  init() {
    document.addEventListener('turbolinks:load', () => {
      ReactDOM.render(<Records />, document.querySelector('#records'));
    });

    document.addEventListener('turbolinks:before-render', () => {
      ReactDOM.unmountComponentAtNode(document.querySelector('#records'));
    });
  }
}

module.exports = App;
