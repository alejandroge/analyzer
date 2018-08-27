lines = File.readlines("text.txt")
text = lines.join
stopwords = %w{the a by on for of are with just but and to the my i has some in}

# Main statistics
line_count = lines.size
total_characters = text.size
total_characters_nospaces = text.gsub(/\s+/, '').size
word_count = text.split.size
sentence_count = text.split(/\.|\?|!/).size
paragraph_count = text.split(/\n\n/).size
keywords_count = text.split.select {|word| !stopwords.include?(word)}.size
keywords_percentage = ((keywords_count.to_f / word_count.to_f) * 100).to_i

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{keywords_percentage}% of words are non-fluff words"

puts

# Summary
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/}

puts ideal_sentences.join(". ")
