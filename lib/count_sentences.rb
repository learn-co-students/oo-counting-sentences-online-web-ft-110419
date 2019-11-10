require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.slice(-1,1).match?(/!/)
  end

  def count_sentences
    self.scan(/\b[^,\s]*\w\b(?=[!.?])/).size
  end
end

