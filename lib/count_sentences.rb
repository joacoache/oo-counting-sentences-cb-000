require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    a = self.split(/[,.?]+/)
    a.each {|b| if b.length == 0 then delete!}
    a.delete_if{|b| b.length == 0}
    a.length
  end
end
