require "benchmark"
require "tempfile"
require "rubygems"

$:.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
require "word_salad"

Benchmark.bmbm do |b|
  b.report("100*5 words") do
    100.times do
      5.words
    end
  end
  b.report("100*5 sentences") do
    100.times do
      5.sentences
    end
  end
  b.report("100*5 paragraphs") do
    100.times do
      5.paragraphs
    end
  end
end