ReturnValue = require 'nanocyte-component-return-value'
UseStaticMessage = require '../src/use-static-message'

describe 'UseStaticMessage', ->
  beforeEach ->
    @sut = new UseStaticMessage

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with useStaticMessage true', ->
      beforeEach ->
        @envelope =
          message: 'anything'
          config:
            staticMessage: 'whatever'
            useStaticMessage: true
        @returnEnvelope =
          message: 'whatever'
          config:
            staticMessage: 'whatever'
            useStaticMessage: true
      it 'should return the message', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal @returnEnvelope

    describe 'when called with useStaticMessage false', ->
      beforeEach ->
        @envelope =
          message: 'anything'
          config:
            staticMessage: 'whatever'
            useStaticMessage: false
        @returnEnvelope =
          message: 'anything'
          config:
            staticMessage: 'whatever'
            useStaticMessage: false
      it 'should return the message', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal @returnEnvelope
