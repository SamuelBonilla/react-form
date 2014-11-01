React = require('react/addons')
nod = require('nod-validation')

checks = require('./checks')
InputField = require('./input_field')

module.exports = React.createClass
  displayName: 'SigninForm'

  handleSubmit: (e) ->
    e.preventDefault()

    email = @refs.email.value()
    password = @refs.password.value()

    console.log email, password

  render: ->
    <div>
      <div className="space--bottom-2">
        <h1 className="alpha">Sign in</h1>
      </div>
      <form
        className="form"
        onSubmit={@handleSubmit}
        noValidate
      >
        <InputField
          ref="email"
          label="Email"
          type="email"
          placeholder="Your email"
          validator={ nod(nod.checks.aString, checks.anEmail) }
        />
        <InputField
          ref="password"
          label="Password"
          type="password"
          placeholder="Your password"
          validator={ nod(nod.checks.aString, nod.checks.min(6)) }
        />
        <button type="submit" className="button--primary button--huge">
          Submit
        </button>
      </form>
    </div>

