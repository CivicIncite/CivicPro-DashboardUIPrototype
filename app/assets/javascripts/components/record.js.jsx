var Record = React.createClass({
  propTypes: {
    description: React.PropTypes.node,
    date: React.PropTypes.string,
    government: React.PropTypes.string,
    agency: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Description: {this.props.description}</div>
        <div>Date: {this.props.date}</div>
        <div>Government: {this.props.government}</div>
        <div>Agency: {this.props.agency}</div>
      </div>
    );
  }
});
