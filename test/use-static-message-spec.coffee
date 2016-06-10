{beforeEach, describe, it} = global
{expect} = require 'chai'

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

      it 'should return the message, wrapped in payload', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal payload: 'whatever'

    describe 'when called with useStaticMessage true and noPayloadWrapper true', ->
      beforeEach ->
        @envelope =
          message: 'anything'
          config:
            staticMessage: {foo: 'whatever'}
            useStaticMessage: true
            noPayloadWrapper: true

      it 'should return the message, sans payload', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal foo: 'whatever'

    describe 'when called with useStaticMessage false', ->
      beforeEach ->
        @envelope =
          message: 'anything'
          config:
            staticMessage: 'whatever'
            useStaticMessage: false
      it 'should return the message', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal 'anything'
