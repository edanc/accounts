import ReactDOM from 'react-dom';
import React from 'react';
import Records from './components/Records';

// Turbolinks - To disable remove the next two lines.
// https://github.com/turbolinks/turbolinks
const Turbolinks = require("turbolinks");
Turbolinks.start();

// Require https://github.com/rails/jquery-ujs
require("jquery-ujs");

let App = {
  init() {
    var records = document.getElementById("records");
    var records = records.dataset.records;
    document.addEventListener('DOMContentLoaded', () => {
      ReactDOM.render(<Records data={records}/>, document.querySelector('#records'));
    });
  }
}

module.exports = App;
