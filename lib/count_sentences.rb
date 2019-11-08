require 'pry'

class String

  def sentence?
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
    #binding.pry
    delimiters = [".","?","!"]
    arr = self.split(Regexp.union(delimiters))
    #binding.pry
    arr.delete_if{|x| x==""}
    arr.length
  end
end