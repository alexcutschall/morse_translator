require 'pry'
class Translate
  attr_reader :dictionary

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end
  def eng_to_morse(phrase)
    morse_array = phrase.downcase.split("").collect do |letter|
      dictionary[letter]
     end
     morse_array.join
  end

  def from_file(file_name)
    file = File.open(file_name).map do |line|
      line
    end
    file_array = file.join.downcase.split("")
    morse_file = file_array.collect do |letter|
      dictionary[letter]
    end
    morse_file.join
  end

  def morse_to_eng(morse)
    morse_split_array = morse.split(" ")
    english_array = morse_split_array.collect do |morse|
      dictionary.key(morse)
    end
    puts english_array
  end
end

translator = Translate.new
puts translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
