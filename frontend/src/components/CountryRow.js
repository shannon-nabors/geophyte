import React from 'react'
import { Grid, Card, Image } from 'semantic-ui-react'

class CountryRow extends React.Component {

    render() {
        let {name, flag, leaders} = this.props
        
        return(
            <Grid.Row id="country-row">
                <Grid.Column width={5}>
                    <Card centered id="flag-card">
                        <Card.Content>
                            <Card.Header>{name}</Card.Header>
                        </Card.Content>
                        <Image src={"http://localhost:3000/" + flag}></Image>
                    </Card>
                </Grid.Column>
                <Card.Group>
                    {leaders.map(leader => {
                        let { photo } = leader
                        return (<Card key={leader.id} id="leader-card">
                            <Image id="leader-photo" src={"http://localhost:3000/" + photo}></Image>
                            <Card.Content>
                                <Card.Description id="leader-name">{leader.name}</Card.Description>
                            </Card.Content>
                            <Card.Content extra id="leader-title">{leader.title}</Card.Content>
                        </Card>)
                    })} 
                </Card.Group>
            </Grid.Row>
        )
    }
}

export default CountryRow