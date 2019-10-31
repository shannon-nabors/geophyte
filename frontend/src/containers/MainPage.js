import React from 'react'
import { connect } from 'react-redux'
import { Container, Grid, Icon, Menu } from 'semantic-ui-react'
import { setPage } from '../redux/actions/actions.js'

const MainPage = (props) => {

    return(
        <Grid centered columns={3}>
            <Grid.Column>
                < Container textAlign="center">
                <div id="main-page-content">
                    <Menu compact icon='labeled'>
                        <Menu.Item
                        onClick={() => props.setPage("index")}
                        >
                        <Icon name='book' />
                        Study
                        </Menu.Item>

                        <Menu.Item
                        onClick={() => props.setPage("quiz")}
                        >
                        <Icon name='question circle' />
                        Quiz
                        </Menu.Item>
                    </Menu>
                </div>
                </Container>
            </Grid.Column>
        </Grid>
    )
}

export default connect(null, { setPage })(MainPage)