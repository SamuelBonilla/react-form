_ = require('lodash')
React = require('react/addons')

Fluxxor = require('fluxxor')
FluxMixin = Fluxxor.FluxMixin(React)
StoreWatchMixin = Fluxxor.StoreWatchMixin

module.exports = React.createClass
  displayName: 'FlashMessages'
  mixins: [ FluxMixin, StoreWatchMixin("FlashStore") ]

  getStateFromFlux: ->
    @getFlux().store("FlashStore").getState()

  render: ->
    return null if _.size(@state.messages) == 0

    messages = for type, message of @state.messages
      <div className={"flash--#{type}"}>{ message }</div>

    <div className="wrap space--bottom-3">
      {messages}
    </div>

