import React from 'react'
import TestUtils from 'react-addons-test-utils'
import { browserHistory } from 'react-router'
import { expect } from 'chai'
import sinon from 'sinon'

import questions from './../fixtures/questions'
import categories from './../fixtures/categories'

import SurveyPage from '../../../../assets/js/components/ecosystems/SurveyPage'
import LoadingIndicator
  from '../../../../assets/js/components/atoms/LoadingIndicator'

describe('The survey page component', () => {
  let page, state, store, dispatch, push

  beforeEach(() => {
    push = sinon.stub(browserHistory, 'push')
    state = sinon.stub()
    dispatch = sinon.stub()
    store = {
      getState: state,
      subscribe: sinon.stub(),
      dispatch: dispatch
    }
    state.returns({
      survey: {
        selectedSurvey: {
          index: 0
        },
        categories: categories,
        questions: questions,
        responses: [],
        isFetching: false,
        alerts: []
      }
    })
    page = TestUtils.renderIntoDocument(
      <SurveyPage store={store} />
    ).getWrappedInstance()
  })

  it('will exist', () => {
    expect(page).to.be.ok
  })

  context('under normal circumstances', () => {
    it('will not have any indicators', () => {
      let indicators =
        TestUtils.scryRenderedComponentsWithType(page, LoadingIndicator)
      expect(indicators).to.be.empty
    })
  })

  context('when fetching records', () => {
    context('with no questions', () => {
      beforeEach(() => {
        state.returns({
          survey: {
            questions: [],
            responses: [],
            isFetching: true,
            alerts: []
          }
        })

        page = TestUtils.renderIntoDocument(
          <SurveyPage store={store} />
        ).getWrappedInstance()
      })

      it('will have an indicator', () => {
        let indicators =
          TestUtils.scryRenderedComponentsWithType(page, LoadingIndicator)
        expect(indicators).to.not.be.empty
      })
    })
  })

  afterEach(() => {
    push.restore()
  })
})
