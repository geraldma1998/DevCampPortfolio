import React from 'react';

export default class Titulo extends React.Component {

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <h3>{this.props.nombre}</h3>
    );
  }
}