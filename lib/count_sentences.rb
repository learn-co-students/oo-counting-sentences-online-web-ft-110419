require 'pry'

class String
  def string_self
   self
  end  

  def sentence?
     if string_self.end_with?(".")
        return true
      else return false
    end
  end

  def question?
     if string_self.end_with?("?")
        return true
      else return false
    end
  end

  def exclamation?
if string_self.end_with?("!")
        return true
      else return false
    end
  end

  def count_sentences
     string_self.squeeze('.!?').count('.!?')
     
     #string_self.squeeze('.!?') searches the "string" of .count_sentences for duplicate #characters outlined in the argument and replaces all instances of duplicates with just one #of that character.
     #.count then counts the punctuation remaining in string. Since all concurrent periods have been removed, it accounts for sentences ending with ellipses. It counts the remaining punctuation and this number is output as the number of sentences.
  end
end