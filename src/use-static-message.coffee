ReturnValue = require 'nanocyte-component-return-value'

class UseStaticMessage extends ReturnValue
  onEnvelope: (envelope) =>
    { config } = envelope

    return config.staticMessage if config.useStaticMessage
    return envelope.message?.payload ? envelope.message

module.exports = UseStaticMessage
