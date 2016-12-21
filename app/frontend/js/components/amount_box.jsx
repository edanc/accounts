import React from 'react';
import {amountFormat} from './util.js';

const AmountBox = React.createClass({
  render: function() {
    return(
      <div className='col-md-4'>
        <div className={'panel panel-' + this.props.type}>
          <div className='panel-heading'>
            {this.props.text}
          </div>
          <div className='panel-body'>
            {amountFormat(this.props.amount)}
          </div>
        </div>
      </div>
    );
  }
});

module.exports = AmountBox;
