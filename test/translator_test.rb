require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'
require 'pry'

class MorseTranslatorTest < Minitest::Test
  def test_translator_class_exists
    translator = Translate.new
    assert_equal Translate, translator.class
  end

  def test_eng_to_morse_function
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end
end
