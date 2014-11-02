Fluxxor = require('fluxxor')

actions = require('./actions')

FlashStore = require('./stores/flash_store')
AuthStore = require('./stores/auth_store')

stores =
  FlashStore: new FlashStore()
  AuthStore: new AuthStore()

flux = new Fluxxor.Flux(stores, actions)

flux.on "dispatch", (type, payload) ->
  console?.log "[Dispatch]", type, payload

module.exports = flux

