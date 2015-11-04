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
          config:
            staticMessage: 'whatever'
            useStaticMessage: true

        @result = @sut.onEnvelope @envelope

      it 'should return the message', ->
        expect(@result).to.deep.equal payload: 'whatever'

    describe 'when called with useStaticMessage false', ->
      beforeEach ->
        @envelope =
          config:
            staticMessage: 'whatever'
            payload: 'anything'
            useStaticMessage: false

        @result = @sut.onEnvelope @envelope

      it 'should return the message', ->
        expect(@result).to.deep.equal payload: 'anything'
