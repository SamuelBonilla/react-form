Fluxxor = require('Fluxxor')
constants = require('./constants')

module.exports = Fluxxor.createStore
  initialize: ->
    @messages = {}
    @nextMessages = {}

    @bindActions(
      constants.SET_FLASH, @onSetFlash,
      constants.SET_NEXT_FLASH, @onSetNextFlash,
      constants.FLUSH_FLASH, @onFlush
    )

  onSetFlash: (messages) ->
    @messages = messages
    @emit 'change'

  onSetNextFlash: (messages) ->
    @nextMessages = messages
    @emit 'change'

  onFlush: ->
    @messages = @nextMessages
    @nextMessages = {}
    @emit 'change'

  getState: ->
    messages: @messages

