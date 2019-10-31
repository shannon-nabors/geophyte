import React from 'react';
import { connect } from 'react-redux'
import '../App.css';
import CountryCollection from './CountryCollection'
import MainPage from './MainPage'
import QuizPage from './QuizPage'
import NavBar from '../components/NavBar'
import { fetchingNations, fetchingLeaders } from '../redux/actions/actions.js'

class App extends React.Component {

  componentDidMount() {
    this.props.fetchingNations()
    this.props.fetchingLeaders()
  }

  render () {
    let { page } = this.props
    return (
      <div>
        <NavBar/>
        {page === "main" ? <MainPage/> : null}
        {page === "index" ? <CountryCollection nations={this.props.allNations}/> : null}
        {page === "quiz" ? <QuizPage/> : null}
      </div>
    )
  }

}

const mapStateToProps = (state, ownProps) => {
  return {
    allNations: state.allNations,
    page: state.currentPage
  }
}

export default connect(mapStateToProps, { fetchingNations, fetchingLeaders })(App)
