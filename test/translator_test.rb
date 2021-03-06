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

  def test_eng_to_morse_with_numbers_and_capitals
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_translator_has_a_from_file_function
    translator = Translate.new

    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_translator_morse_to_eng
    translator = Translate.new

    assert_equal "hello world", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")

  end
end
