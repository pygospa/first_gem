require 'minitest/autorun'
require 'hola_pygospa'

class HolaTest < Minitest::Test
  def test_english_hello
    assert_equal "Hello world!",
      Hola.hi("english")
  end

  def test_any_hello
    assert_equal "Hello world!",
      Hola.hi("ruby")
  end

  def test_spanish_hello
    assert_equal "¡Hola mundo!",
      Hola.hi("spanish")
  end
end

