class Anagram
  attr_reader :dictionary

  def initialize
    @dictionary = create_dict
  end

  def generate_anagrams(string)
    permutations = find_permutations(string)
    permutations.find_all {|word| dictionary.include?(word)}
  end

  private

    def create_dict
      File.read('/usr/share/dict/words').split("\n")
    end

    def find_permutations(string)
      string.chars.permutation.to_a.map(&:join)
    end
end

anagram = Anagram.new
puts anagram.generate_anagrams("cinema")
