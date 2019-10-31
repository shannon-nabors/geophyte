import React from 'react'
import CountryRow from '../components/CountryRow'
import { Grid, Header } from 'semantic-ui-react'

const CountryCollection = (props) => {

    function showCountries() {
        return props.nations.map(nation => {
            return <CountryRow
                key={nation.id}
                {...nation}
            />
        })
    }

    return(
        <div>
            <Header block as="h1">Countries of the World</Header>
            <Grid divided='vertically' relaxed>
                {showCountries()}
            </Grid>
        </div>
    )
}

export default CountryCollection