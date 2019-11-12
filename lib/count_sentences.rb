require 'pry'

class String

  def sentence?
    #string.match(/[.]$/) ? true : false
    if self.end_with?(".")
      true
    else 
      false
    end 
  end

  def question?
    if self.end_with?("?")
      true
    else 
      false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else 
      false
    end 
  end

  def count_sentences
        arr = self.split(/[.?!]/)
        arr.delete_if{|sentence| sentence.empty?}
        arr.length
  end
  
end