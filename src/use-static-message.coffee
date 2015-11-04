ReturnValue = require 'nanocyte-component-return-value'

class UseStaticMessage extends ReturnValue
  onEnvelope: (envelope) =>
    {config} = envelope
    {staticMessage,useStaticMessage} = config

    return payload: staticMessage if useStaticMessage

    delete config.useStaticMessage
    delete config.staticMessage

    config

module.exports = UseStaticMessage
