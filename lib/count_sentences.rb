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
    a.each do |b|
      if b.length = 0
        a.delete!(b)
      end
    end
    a.length
  end
end
