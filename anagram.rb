def anagram_finder(string)
  dictionary ||= File.read('/usr/share/dict/words').split("\n")
  string.chars.permutation.to_a.map(&:join).find_all do |word|
    dictionary.include?(word)
  end
end

puts anagram_finder("cinema")
