import React from 'react';
import Titulo from "./Titulo"
import Navigator from "./Navigator"

export default class Search extends React.Component {

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div> 
        <Navigator title="PaginaWeb"/>
        <div className="container">
          <Titulo nombre={this.props.titulo}/>
          <p>{this.props.texto}</p>
        </div>
      </div>
    );
  }
}