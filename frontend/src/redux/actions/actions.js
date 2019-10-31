
function fetchedNations(nations) {
    return { type: "FETCHED_NATIONS", nations }
}

function fetchingNations() {
    return (dispatch) => {
        fetch('http://localhost:3000/nations')
        .then(r => r.json())
        .then(data => dispatch(fetchedNations(data)))
    }
}

function fetchedLeaders(leaders) {
    return { type: "FETCHED_LEADERS", leaders }
}

function fetchingLeaders() {
    return (dispatch) => {
        fetch('http://localhost:3000/leaders')
        .then(r => r.json())
        .then(data => dispatch(fetchedLeaders(data)))
    }
}

function setPage(name) {
    return { type: "SET_PAGE", name }
}

function getLeaderSet(size) {
    return (dispatch, getState) => {
        const { allLeaders } = getState()
        let shuffled = allLeaders.slice(0), i = allLeaders.length, min = i - size, temp, index;
        while (i-- > min) {
            index = Math.floor((i + 1) * Math.random());
            temp = shuffled[index];
            shuffled[index] = shuffled[i];
            shuffled[i] = temp;
        }
        dispatch({type: "SET_QUIZ", payload: shuffled.slice(min)})
    }
}

function setCurrentLeader() {
    return (dispatch, getState) => {
        const { currentLeaders } = getState()
        let leader = (currentLeaders[0] ? currentLeaders[0] : null)
        currentLeaders.shift()
        dispatch({type: "SET_CURRENT_LEADER", leader: leader })
    }
}

export { fetchedNations, fetchingNations, fetchedLeaders, fetchingLeaders, setPage, getLeaderSet, setCurrentLeader }