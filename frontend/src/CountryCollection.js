import React from 'react'
import CountryCard from './CountryCard'

class CountryCollection extends React.Component {

    showCountries = () => {
        return this.props.nations.map(nation => {
            return <CountryCard
                key={nation.id}
                {...nation}
            />
        })
    }

    render() {
        return(
            <div>
                {this.showCountries()}
            </div>
        )
    }
}

export default CountryCollection