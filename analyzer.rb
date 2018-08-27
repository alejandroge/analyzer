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
