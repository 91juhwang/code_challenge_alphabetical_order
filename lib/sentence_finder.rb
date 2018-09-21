module SentenceFinder
  ALPHABETS = ('a'..'z').to_a.join

  def self.find(paragraph)
    # Let's make this work!
    sentences = paragraph.scan(/[^\.!?]+[\.!?]/)
    array_of_words = sentences.map { |sentence| sentence.split(' ')}

    a = []
    array_of_words.each do |array|
      array.each do |word|
        string_one = word.chars.sort_by(&:downcase).join
        puts string_one
        consecutive_words = string_one.each_char.each_cons(2).find_all {|letters| ALPHABETS.include? (letters.join) }
        a << consecutive_words
      end
      a
    end
    puts a
    # alphabetical_order_words = array_of_words.map { |c| c.sort_by(&:downcase) }

    # iterate over sentences
    # for each sentence split them into words
    # sort each words alphabeetically
    # Compare with alphabets
    # count how many words contain consecutive letters

  end
end
# 'test'.each_char.each_cons(2).find_all {|letters| alphabets.join('').include? (letters.join) }
