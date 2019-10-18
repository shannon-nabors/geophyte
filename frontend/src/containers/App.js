import React from 'react';
import { connect } from 'react-redux'
import '../App.css';
import CountryCollection from './CountryCollection'
import { fetchingNations } from '../redux/actions/actions.js'

class App extends React.Component {

  componentDidMount() {
    this.props.fetchingNations()
  }

  render () {
    return (
      <div>
        <CountryCollection nations={this.props.nations}/>
      </div>
    )
  }

}

const mapStateToProps = (state, ownProps) => {
  return {
    nations: state.nations
  }
}

export default connect(mapStateToProps, { fetchingNations })(App)
