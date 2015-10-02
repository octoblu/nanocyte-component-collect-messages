ReturnValue = require 'nanocyte-component-return-value'

class CollectMessages extends ReturnValue
  onEnvelope: (envelope) =>
    {data , message} = envelope
    data = [] if !data?

    data.push message
    
    return data

module.exports = CollectMessages
