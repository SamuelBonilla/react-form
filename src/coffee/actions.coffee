constants = require('./constants')

module.exports =
  setFlash: (messages) ->
    @dispatch(constants.SET_FLASH, messages: messages)

  setNextFlash: (messages) ->
    @dispatch(constants.SET_NEXT_FLASH, messages: messages)

  flushFlash: ->
    @dispatch(constants.FLUSH_FLASH)

  signIn: ->
    @dispatch(constants.SIGN_IN)

  signOut: ->
    @dispatch(constants.SIGN_OUT)

