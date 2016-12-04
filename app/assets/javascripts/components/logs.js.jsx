var Logs = React.createClass({
  getInitialState: function() {
    return { show: false, logs: this.props.data };
  },

  getDefaultProps: function() {
    return { logs: [], show: false };
  },

  handleDeleteLog: function(log){
    logs = this.state.logs.slice();
    index = logs.indexOf(log);
    logs.splice(index,1)
    this.replaceState({logs: logs})
  },

  renderShow: function(log){
  },

  handleToggle: function(e) {
    this.setState({ show: !this.state.show, });
    this.toggleShowOrIndex();
  },

  renderIndex: function(){
    return(
      <div>
        <h1>Logs</h1>
        <table className='table table-hover table-striped  table-condensed'>
          <thead>
            <tr>
              <th>Date</th>
              <th></th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            {this.state.logs.map(function(log){
              return <Log key={log.id}
                log={log}
                handleDeleteLog={this.handleDeleteLog}
              />
              }.bind(this))}
            </tbody>
          </table>
        </div>
    );
  },

  toggleShowOrIndex: function(){
    if (this.state.show === true){
      return this.renderShow();
    }else{
      return this.renderIndex();
    };
  },

  render: function() {
    return this.toggleShowOrIndex();
  }
});
