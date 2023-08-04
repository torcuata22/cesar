class DecodeController < ApplicationController
  def index
    alphabet = ('a'..'z').to_a 
    num = params[:num].to_i
    phrase = params[:phrase]&.downcase || ""

    puts "Receiver params[:phrase]: #{params[:phrase]}"
    puts "Receiver params[:num]: #{params[:num]}"

    words = phrase.split(' ')
    decoded_phrase = ""
    words.each_with_index do |word, index| 
      decoded_word = "" 
      word.each_char do |char|
          if alphabet.include?(char)
              i = alphabet.index(char)
              j = (alphabet.length + i - num) % alphabet.length 
              letter = alphabet[j] 
              decoded_word << letter
          else
              decoded_word << char
          end
      end
      decoded_phrase << decoded_word
      decoded_phrase << ' '
    end
    
    @decoded_phrase = decoded_phrase
  end  
 end
