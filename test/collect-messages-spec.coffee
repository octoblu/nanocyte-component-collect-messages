ReturnValue = require 'nanocyte-component-return-value'
CollectMessages = require '../src/collect-messages'

describe 'CollectMessages', ->
  beforeEach ->
    @sut = new CollectMessages

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with message it should add to array', ->
      beforeEach ->
        @envelope =
          message: "test2"
          data: ['test1']
      it 'should return the array', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal ['test1', 'test2']
    describe 'when called with empty array it should create it and then add', ->
      beforeEach ->
        @envelope =
          message: "test2"
          data: null
      it 'should return the array', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal ['test2']
