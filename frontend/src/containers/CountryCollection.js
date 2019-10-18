import React from 'react'
import CountryCard from '../components/CountryCard'
import { Grid } from 'semantic-ui-react'

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
            <Grid columns={4} divided='vertically' relaxed>
                {this.showCountries()}
            </Grid>
        )
    }
}

export default CountryCollection