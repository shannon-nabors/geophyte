import React from 'react'

class CountryCard extends React.Component {

    render() {
        let {name, flag, leaders} = this.props
        return(
            <div>
                <h2>{name}</h2>
                <img src={flag}></img>
                {leaders.map(leader => 
                    <div>
                        <p>{leader.title}: {leader.name}</p>
                        <img className="leader-photo" src={leader.photo}></img>
                    </div>
                )}
            </div>
        )
    }
}

export default CountryCard