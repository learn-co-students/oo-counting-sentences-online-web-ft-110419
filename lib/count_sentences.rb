require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else 
      false
    end
  end

  def question?
    if self.match(/\?\z/)
      true 
    else 
      false 
    end
  end

  def exclamation?
    if self[-1] == "!"
      true 
    else 
      false 
    end
  end

  def count_sentences
    array = self.split(".")
    p array
    closer = array.map do |string|
      string.split("?")
    end 
    closer = closer.flatten
    sentences = closer.map do |string|
      string.split("!")
    end
    sentences = sentences.flatten
    sentences = sentences.delete_if{|sentence| sentence == ""}
    sentences.length
  end
end
