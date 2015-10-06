ReturnValue = require 'nanocyte-component-return-value'
UseStaticMessage = require '../src/use-static-message'

describe 'UseStaticMessage', ->
  beforeEach ->
    @sut = new UseStaticMessage

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
