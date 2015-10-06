ReturnValue = require 'nanocyte-component-return-value'

class UseStaticMessage extends ReturnValue
  onEnvelope: (envelope) =>
    { config } = envelope

    envelope.message = config.staticMessage if config.useStaticMessage
    return envelope

module.exports = UseStaticMessage
