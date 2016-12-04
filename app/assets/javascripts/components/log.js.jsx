var Log = React.createClass({

  handleDelete: function(e){
    $.ajax({
      method: 'DELETE',
      url: '/logs/' + this.props.log.id,
      dataType: 'JSON',
      success: function() {
        this.props.handleDeleteLog(this.props.log)
      }.bind(this)
    });
  },

  handleShow: function(){
    window.location.replace(url)
  },

  render: function() {
    return(
      <tr>
        <td>
          {
            this.props.log.created_at
          }
        </td>
        <td>
          <a className='btn btn-default' onClick={this.handleShow}> view </a>
        </td>
        <td>
          <a className='btn btn-default' onClick={this.handleDelete} >delete </a>
        </td>
      </tr>
    );
  }

});
