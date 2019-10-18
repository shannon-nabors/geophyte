import React from 'react';
import CountryCollection from './CountryCollection'
import './App.css';

class App extends React.Component {

  constructor() {
    super()
    this.state = {
      countries: []
    }
  }

  componentDidMount = () => {
    fetch('http://localhost:3000/nations')
    .then(r => r.json())
    .then(nations => this.setState({countries: nations}))
  }
  
  render () {
    return (
      <div>
        <CountryCollection nations={this.state.countries}/>
      </div>
    )
  }
}

export default App;
