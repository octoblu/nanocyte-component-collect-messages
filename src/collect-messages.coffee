ReturnValue = require 'nanocyte-component-return-value'
_           = require 'lodash'

class CollectMessages extends ReturnValue
  onEnvelope: (envelope) =>
    {data , message} = envelope

    data = [] unless _.isArray data
    data.push message

    return data

module.exports = CollectMessages
