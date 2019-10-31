import React from 'react'
import { connect } from 'react-redux'
import { Header, Menu, Image } from 'semantic-ui-react'
import { setPage } from '../redux/actions/actions.js'

const NavBar = (props) => {

    return(
        <Header id="nav" block as="h1">
            {props.page === "main" ? null :<Image
              id="logo"
              src={require("../images/globe-tan-green.png")}
              onClick={() => props.setPage("main")}
            ></Image>}
            Geophyte
            {props.page === "main" ? null : <Menu compact floated='right'>
                <Menu.Item onClick={() => props.setPage("index")}>
                All Countries
                </Menu.Item>

                <Menu.Item onClick={() => props.setPage("quiz")}>
                Quiz
                </Menu.Item>
            </Menu>}
        </Header>
    )
}

const mapStateToProps = (state, ownProps) => {
    return {
      page: state.currentPage
    }
  }

export default connect(mapStateToProps, { setPage })(NavBar)