require 'pry'

class String

  def sentence?
    self ? self.end_with?(".") : false
  end

  def question?
    self ? self.end_with?("?") : false
  end

  def exclamation?
    self ? self.end_with?("!") : false
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
  
end