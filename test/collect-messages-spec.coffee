ReturnValue = require 'nanocyte-component-return-value'
CollectMessages = require '../src/collect-messages'

describe 'CollectMessages', ->
  beforeEach ->
    @sut = new CollectMessages

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with empty data and a message', ->
      it 'should return the data', ->
        expect(@sut.onEnvelope({ message: 'anything'})).to.deep.equal ['anything']

    describe 'when called with previous data and a message', ->
      it 'should return the data', ->
        expect(@sut.onEnvelope({ message: 'something', data: ['anything']})).to.deep.equal ['anything', 'something']
