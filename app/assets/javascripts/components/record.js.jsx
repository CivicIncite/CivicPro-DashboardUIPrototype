var Record = React.createClass({
  propTypes: {
    description: React.PropTypes.node,
    date: React.PropTypes.string,
    government: React.PropTypes.string,
    agency: React.PropTypes.string
  },

  render: function() {
    return (
      <div class="card-block">
        <h3>{this.props.agency}</h3>
        <p class="muted">{this.props.date}</p>
        <p>{this.props.description}</p>

        <div>Government: {this.props.government}</div>
      </div>
    );
  }
});
