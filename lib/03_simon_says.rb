def echo(word)
  word
end

def shout(sentence)
  words = sentence.split(" ")
  shouted = words.map {|word| word.upcase}
  shouted.join(" ")
end

def repeat(word, num=2)
  result = []
  num.times do
    result << word
  end
  result.join(" ")
end

def start_of_word(word, num)
  chars = word.chars
  chars[0...num].join("")
end

def first_word(sentence)
  words = sentence.split(" ")
  words[0]
end

def titleize(sentence)
  little_words = ["or", "and", "if", "the"]
  result = []
  words = sentence.split(" ")
  words.each_with_index do |word, idx|
    if little_words.include?(word) && idx != 0
      result << word
    else
      result << word.capitalize
    end
  end
  result.join(" ")
end
