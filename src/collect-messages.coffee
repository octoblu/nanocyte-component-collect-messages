ReturnValue = require 'nanocyte-component-return-value'

class CollectMessages extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = CollectMessages
