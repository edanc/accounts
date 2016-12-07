import React from 'react';
export default class Records extends React.Component {
  getInitialState: function() {
    return { records: this.props.data };
  },

  getDefaultProps: function() {
    return { records: [] };
  },

  addRecord: function(record){
    var records = this.state.records.slice();
    records.push(record);
    this.setState({records: records});
  },


  updateRecord: function(record, data) {
    var index = this.state.records.indexOf(record);
    var records = React.addons.update(this.state.records,
                                      { $splice: [[index, 1, data]] });
                                      this.replaceState({ records: records });
  },

  credits: function(){
    credits = this.state.records.filter(function(val){
      return val.amount >= 0
    });
    return credits.reduce (function(prev, curr){
      return prev + parseFloat(curr.amount);
    }, 0)
  },

  debits: function(){
    var debits = this.state.records.filter(function(val){
      return val.amount < 0
    });
    return debits.reduce (function(prev, curr){
      return prev + parseFloat(curr.amount);
    }, 0)
  },

  balance: function(){
   return this.debits() + this.credits();
  },

  deleteRecord: function(record){
    records = this.state.records.slice();
    index = records.indexOf(record);
    records.splice(index,1)
    this.replaceState({records: records})
  },

  render: function() {
    return(
      <div className='records'>
        <h2 className='title'>
          Records
        </h2>

        <div className='row'>
          <AmountBox type='success' amount={this.credits()} text='Credit'/>
          <AmountBox type='danger'  amount={this.debits()}  text='Debit'/>
          <AmountBox type='info'    amount={this.balance()} text='Balance'/>
        </div>

        <RecordForm handleNewRecord={this.addRecord} />

        <br></br>
        <table className='table table-bordered'>
          <thead>
            <tr>
              <th> Date </th>
              <th> Title </th>
              <th> Amount </th>
              <th colSpan='2'> Actions </th>
            </tr>
          </thead>
          <tbody>
            {this.state.records.map(function(record) {
              return <Record key={record.id}
                record={record}
                handleDeleteRecord={this.deleteRecord}
                handleEditRecord={this.updateRecord}
              />
              }.bind(this))}
          </tbody>
        </table>
      </div>
    );}
});
