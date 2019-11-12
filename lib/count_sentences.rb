require 'pry'

class String

  def sentence?
    self.match?(/[.]/)
  end

  def question?
    self.end_with?("?")
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