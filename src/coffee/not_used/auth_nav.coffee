React = require('react/addons')
Link = require('react-router').Link
Fluxxor = require('fluxxor')

FluxMixin = Fluxxor.FluxMixin(React),
StoreWatchMixin = Fluxxor.StoreWatchMixin

module.exports = React.createClass
  displayName: 'AuthNav'
  mixins: [ FluxMixin, StoreWatchMixin("AuthStore") ]

  getStateFromFlux: ->
    @getFlux.store("AuthStore").getState()

  signOut: ->
    @getFlux.actions.signOut()

  render: ->
    if @state.isSignedIn
      <ul className="nav">
        <li className="nav__item">Hi Foo!</li>
        <li className="nav__item"><a onClick={@signOut} className="button--alert">Sign out</a></li>
      </ul>
    else
      <ul className="nav">
        <li className="nav__item"><Link activeClassName="is-active" to="sign-in" className="button--primary">Sign in</Link></li>
      </ul>

