import { combineReducers } from 'redux'

const nationReducer = (state = [], action) => {
  switch (action.type) {
    case "FETCHED_NATIONS":
      return action.nations
    default:
      return state
  }
}

const rootReducer = combineReducers({
  nations: nationReducer
})
  
export default rootReducer