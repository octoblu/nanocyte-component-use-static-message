ReturnValue = require 'nanocyte-component-return-value'

class UseStaticMessage extends ReturnValue
  onEnvelope: (envelope) =>
    {config, message} = envelope

    return config.staticMessage if config.useStaticMessage && config.noPayloadWrapper
    return payload: config.staticMessage if config.useStaticMessage
    message

module.exports = UseStaticMessage
