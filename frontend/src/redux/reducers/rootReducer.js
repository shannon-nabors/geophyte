import { combineReducers } from 'redux'

const nationReducer = (state = [], action) => {
  switch (action.type) {
    case "FETCHED_NATIONS":
      return action.nations
    default:
      return state
  }
}

const leadersReducer = (state = [], action) => {
  switch (action.type) {
    case "FETCHED_LEADERS":
      return action.leaders
    default:
      return state
  }
}

const pageReducer = (state = "main", action) => {
  switch (action.type) {
    case "SET_PAGE":
      return action.name
    default:
      return state
  }
}

const quizReducer = (state = [], action) => {
  switch (action.type) {
    case "SET_QUIZ":
      return action.payload
    default:
      return state
  }
}

const leaderReducer = (state = null, action) => {
  switch (action.type) {
    case "SET_CURRENT_LEADER":
      return action.leader
    default:
      return state
  }
}

const rootReducer = combineReducers({
  allNations: nationReducer,
  allLeaders: leadersReducer,
  currentPage: pageReducer,
  currentLeaders: quizReducer,
  currentLeader: leaderReducer
})
  
export default rootReducer