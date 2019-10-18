import React from 'react'
import { Grid, Card, Image } from 'semantic-ui-react'

class CountryCard extends React.Component {

    render() {
        let {name, flag, leaders} = this.props
        // let cols = (12 / leaders.length)
        return(
            <Grid.Row id="country-row">
                <Grid.Column>
                    <Card centered id="flag-card">
                        <Card.Content>
                            <Card.Header>{name}</Card.Header>
                        </Card.Content>
                        <Image src={flag}></Image>
                    </Card>
                </Grid.Column>
                {leaders.map(leader => 
                    <Grid.Column key={leader.id}>
                        {leader.title}: {leader.name}<br></br>
                        <img id="leader-photo" src={leader.photo}></img>
                    </Grid.Column>
                )} 
            </Grid.Row>
        )
    }
}

export default CountryCard