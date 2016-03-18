import fetch from 'isomorphic-fetch'
import checkStatus from './../../utils/checkStatus'

export const FETCH_ACTIVE_SURVEYS_REQUEST = 'FETCH_ACTIVE_SURVEYS_REQUEST'
export const FETCH_ACTIVE_SURVEYS_SUCCESS = 'FETCH_ACTIVE_SURVEYS_SUCCESS'
export const FETCH_ACTIVE_SURVEYS_FAILURE = 'FETCH_ACTIVE_SURVEYS_FAILURE'

export function fetchActiveSurveysRequest() {
  return {
    type: FETCH_ACTIVE_SURVEYS_REQUEST
  }
}

export function fetchActiveSurveysSuccess(response) {
  return {
    type: FETCH_ACTIVE_SURVEYS_SUCCESS,
    response
  }
}

export function fetchActiveSurveysFailure(error) {
  return {
    type: FETCH_ACTIVE_SURVEYS_FAILURE,
    error
  }
}

export function fetchActiveSurveys() {
  return function(dispatch) {
    dispatch(fetchActiveSurveysRequest())
    return fetch('/survey')
    .then(checkStatus)
    .then(response => response.json())
    .then(response => {
      dispatch(fetchActiveSurveysSuccess(response))
      // If only one survey comes back, go ahead and make the follow up API
      // to set it as active.
      if (response.length === 1) {
        dispatch(selectActiveSurvey(response[0]))
      }
    })
    .catch(error => dispatch(fetchActiveSurveysFailure(error)))
  }
}

export const SELECT_ACTIVE_SURVEY = 'SELECT_ACTIVE_SURVEY'
export const SELECT_ACTIVE_SURVEY_REQUEST = 'SELECT_ACTIVE_SURVEY_REQUEST'
export const SELECT_ACTIVE_SURVEY_SUCCESS = 'SELECT_ACTIVE_SURVEY_SUCCESS'
export const SELECT_ACTIVE_SURVEY_FAILURE = 'SELECT_ACTIVE_SURVEY_FAILURE'

export function selectActiveSurvey(survey) {
  return function(dispatch) {
    dispatch({
      type: SELECT_ACTIVE_SURVEY_REQUEST,
      survey
    })
    return fetch(`/survey/${survey.id}`)
    .then(checkStatus)
    .then(response => response.json())
    .then(response => dispatch(selectActiveSurveySuccess(response)))
    .catch(error => dispatch(selectActiveSurveyFailure(error)))
  }

}

export function selectActiveSurveyRequest() {
  return {
    type: SELECT_ACTIVE_SURVEY_REQUEST
  }
}

export function selectActiveSurveySuccess(response) {
  return {
    type: SELECT_ACTIVE_SURVEY_SUCCESS,
    response
  }
}

export function selectActiveSurveyFailure(error) {
  return {
    type: SELECT_ACTIVE_SURVEY_FAILURE,
    error
  }
}

export const TOGGLE_SURVEY_BUILDER_QUESTION_EDITABLE =
  'TOGGLE_SURVEY_BUILDER_QUESTION_EDITABLE'

export function toggleSurveyBuilderQuestionEditable(id) {
  return {
    type: TOGGLE_SURVEY_BUILDER_QUESTION_EDITABLE,
    id
  }
}

export const UPDATE_SURVEY_BUILDER_QUESTION = 'UPDATE_SURVEY_BUILDER_QUESTION'

export function updateSurveyBuilderQuestion(question) {
  return function(dispatch) {
    dispatch({
      type: UPDATE_SURVEY_BUILDER_QUESTION,
      question
    })
    dispatch({
      type: TOGGLE_SURVEY_BUILDER_QUESTION_EDITABLE,
      id: question.id
    })
  }
}