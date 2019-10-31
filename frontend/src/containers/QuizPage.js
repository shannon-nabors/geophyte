import React from 'react'
import { connect } from 'react-redux'
import { Image, Button, Container, Form } from 'semantic-ui-react'
import { getLeaderSet, setCurrentLeader } from '../redux/actions/actions.js'

class QuizPage extends React.Component {

    constructor() {
        super()
        this.state = {
            country: "",
            answered: null,
            questions: 1,
            score: 0
        }
    }

    componentDidMount() {
        this.props.getLeaderSet(11)
    }

    handleChange = (e, { value }) => {
        this.setState({ country: value })
    }

    checkAnswer = () => {
        let answer = this.props.leader.nations[0].name
        let { country, questions, score } = this.state
        if (country === answer) {
            this.setState({
                answered: "correct",
                questions: questions + 1,
                score: score + 1
            })
        } else {
            this.setState({
                answered: "incorrect",
                questions: questions + 1,
            })
        }
    }

    nextQuestion = () => {
        this.props.setCurrentLeader()
        this.setState({ answered: null, country: "" })
        if (this.state.questions === 11) {
            this.setState({ finished: true })
        }
    }

    reset = () => {
        this.props.getLeaderSet(11)
        this.setState({
            country: "",
            answered: null,
            questions: 0,
            score: 0
        })
    }

    render() {
        let { leader } = this.props
        let { country, answered, finished, score, questions } = this.state
        return(
            <div>
                {!leader && !answered && !finished ? 
                    <Container>
                        Ready for a quiz?<br></br>
                        <Button onClick={this.props.setCurrentLeader}>Begin</Button>
                    </Container> : null
                    
                }
                {leader && !finished ?
                <Container>
                    <Image id="leader-photo" src={"http://localhost:3000/" + leader.photo}></Image>
                </Container> : null
                }
                {leader && !answered && !finished ?
                    <Container>
                        Question {questions}: In which country does {leader.name} hold political office?
                        <Form onSubmit={this.checkAnswer}>
                        <Form.Input
                            value={country}
                            onChange={this.handleChange}
                        />
                        <Form.Button content='Submit' />
                        </Form>
                    </Container> :null
                }
                {answered && answered === "correct" ?
                    <Container>
                        Correct! {leader.name} is the {leader.title} of {leader.nations[0].name}.
                    </Container> : null
                }
                {answered && answered === "incorrect" ?
                    <Container>
                        Sorry, that's incorrect. {leader.name} is the {leader.title} of {leader.nations[0].name}, not {country}.
                    </Container> : null
                }
                {answered ? 
                    <Container>
                        <Button onClick={this.nextQuestion}>Next</Button>
                    </Container> : null
                }
                {finished ?
                    <Container>
                        Congratulations!  You got {score} out of 10 questions correct.<br></br>
                        <Button>Play Again</Button>
                    </Container> :null
                }
            </div>
        )
    }
    
}

const mapStateToProps = (state, ownProps) => {
    return {
      leader: state.currentLeader
    }
}

export default connect(mapStateToProps, { getLeaderSet, setCurrentLeader })(QuizPage)