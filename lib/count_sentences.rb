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
   this_sentence =  self.split(/\.|\?|\!/)
    newer_array = this_sentence.delete_if{|sentence| sentence.length < 2}
    return newer_array.count
  end
end