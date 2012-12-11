require "word_salad/core_ext"

module WordSalad
  # all the words in the dictionary
  def self.words 
    @words ||= File.read(File.join(File.dirname(__FILE__), "word_salad/dictionary")).split("\n")
  end

  # the number of words in the dictionary
  def self.size  
    @size ||= self.words.size
  end

end
