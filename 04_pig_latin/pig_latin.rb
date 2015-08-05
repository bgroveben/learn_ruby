def translate(string)
  letters = ('a'..'z').to_a
  vowels = %w[a,e,i,o,u]
  consonants = letters - vowels 
  string.gsub(/\w+/) do |word|
    if vowels.include?(word.downcase[0])
      word + 'ay'
    elsif word.include? "qu"
      word = word.gsub('qu', ' ')
      word.gsub!(/^([^aeiou]*)(.*)/, '\2\1ay')
      word.gsub(' ', 'qu')
    else
      idx = word.index(/[aeiou]/)
      word[idx, word.length-idx] + word[0,idx] + "ay"
    end
  end
end

puts translate("The quick brown fox!")