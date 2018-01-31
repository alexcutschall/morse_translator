require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'

class MorseTranslatorTest < Minitest::Test
  def test_translator_class_exists
    translator = Translate.new
    assert_equal Translate, translator.class
  end
end
