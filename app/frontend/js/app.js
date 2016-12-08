import ReactDOM from 'react-dom';
import React from 'react'
import Records from './components/Records';

const Turbolinks = require("turbolinks");

// Turbolinks - To disable remove the next two lines.
// https://github.com/turbolinks/turbolinks
Turbolinks.start();

// Require https://github.com/rails/jquery-ujs
require("jquery-ujs");

let App = {
  init() {
    console.log("Hello World");
    document.addEventListener('DOMContentLoaded', () => {
      //ReactDOM.render(<Records />, document.querySelector('#records'));
    });
  }
}

//


module.exports = App;
