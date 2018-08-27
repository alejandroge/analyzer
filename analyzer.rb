lines = File.readlines("text.txt")
text = lines.join

line_count = lines.size
puts "#{line_count} lines"

total_characters = text.size
puts "#{total_characters} characters"

total_characters_nospaces = text.gsub(/\s+/, '').size
puts "#{total_characters_nospaces} characters (excluding spaces)"

word_count = text.split.size
puts "#{word_count} words"

sentence_count = text.split(/\.|\?|!/).size
puts "#{sentence_count} sentences"

paragraph_count = text.split(/\n\n/).size
puts "#{paragraph_count} paragraphs"

puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
