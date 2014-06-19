file_path= gets.chomp

File.readlines(file_path).each do |line|
  puts line_upcase= line.upcase
  puts upcase_percent= line.similarity(line_upcase) * 100
  puts downcase_percent = 100 - upcase_percent
end  