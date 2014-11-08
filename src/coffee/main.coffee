React = require('react/addons')
SigninForm = require('./components/signin_form')
FlashMessages = require('./components/flash_messages')

flux = require('./flux')

page = (
  <div>
    <FlashMessages flux={flux} />
    <SigninForm flux={flux} />
  </div>
)

React.render(page, document.getElementById('main'))

