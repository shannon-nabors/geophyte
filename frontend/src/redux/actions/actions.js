
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

export { fetchedNations, fetchingNations }