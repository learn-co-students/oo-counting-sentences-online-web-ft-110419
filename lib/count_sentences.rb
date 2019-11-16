require 'pry'

class String
def initialize
  string_array = []

end
  def sentence?
    if self.end_with?(".")
     return true
    else return false
    end
  end

  def question?
    if self.end_with?("?")
     return true
    else return false
    end
  end

  def exclamation?
    if self.end_with?("!")
     return true
    else return false
    end
  end

  def count_sentences
    count_array = self.split(/[!.?%]/)

      if count_array.count == 0
    return 0
  end
    return count_array.delete_if {|word| word.size < 1}.count
  end
end
