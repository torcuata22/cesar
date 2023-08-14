class EncodeController < ApplicationController
  def index

    alphabet = ('a'..'z').to_a 
    num = params[:num].to_i
    phrase = params[:phrase]&.downcase || ""

    words = phrase.split(' ')
    encoded_phrase = ""

    words.each_with_index do |word, index|
        encoded_word = ""
        word.each_char do |char|
          if alphabet.include?(char)
              i = alphabet.index(char)
              j = (alphabet.length + i + num) % alphabet.length 
              letter = alphabet[j]
              encoded_word << letter
          else
              encoded_word << char
          end
        end
        encoded_phrase << encoded_word
        encoded_phrase << ' '
    end

   @encoded_phrase = encoded_phrase

  end
end
  

