# The main Hola driver
class Hola
  # Say hi to the world!
  #
  # Example:
  #   >> Hola.hi("spanish")
  #   => ¡Hola mundo!
  #
  # Arguments:
  #   language: (String)

  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

require 'hola_pygospa/translator'
