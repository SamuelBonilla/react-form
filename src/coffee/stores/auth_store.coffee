Fluxxor = require('Fluxxor')
constants = require('../constants')

module.exports = Fluxxor.createStore
  initialize: ->
    @bindActions(
      constants.SIGN_IN, @onSignIn,
      constants.SIGN_OUT, @onSignOut
    )

  onSignIn: ->
    localStorage['isSignedIn'] = true
    @emit 'change'

  onSignOut: ->
    localStorage.removeItem('isSignedIn')
    # flash.next.notice 'Signed out successfully!'
    # @transitionTo('home')
    @emit 'change'

  getState: ->
    isSignedIn: localStorage['isSignedIn']

