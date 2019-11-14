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
  end
end