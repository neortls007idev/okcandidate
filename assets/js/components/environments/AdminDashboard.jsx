import React, { Component, PropTypes } from 'react'
import { connect } from 'react-redux'

import {
  setAdminDashboardMood
} from './../../redux/admin/admin-actions'

import QuestionBuilder from './../ecosystems/QuestionBuilder.jsx'

class AdminDashboard extends Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.dispatch(setAdminDashboardMood('Fine, thanks for asking.'))
  }

  render() {
    return (
      <article>
        <h1>Admin Dashboard</h1>
        <p>This is where the adminstrator will create and manage surveys.</p>
        <p>At present, the administrator's mood is:</p>
        <pre>{this.props.admin.mood}</pre>

        <QuestionBuilder
          questionBuilder={this.props.questionBuilder}
          dispatch={this.props.dispatch}/>

      </article>
    )
  }
}

AdminDashboard.propTypes = {
  admin: PropTypes.object,
  questionBuilder: PropTypes.object,
  dispatch: PropTypes.func
}

export default connect(
  state => ({
    admin: state.admin,
    questionBuilder: state.questionBuilder
  })
)(AdminDashboard)
