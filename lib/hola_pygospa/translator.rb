class Hola::Translator
  def initialize(language)
    @language = language
  end

  def hi
    case @language
    when "spanish"
      "¡Hola mundo!"
    when "german"
      "Hallo Welt!"
    else
      "Hello world!"
    end
  end
end
