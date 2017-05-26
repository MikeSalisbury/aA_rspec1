def translate(sentence)
  words = sentence.split
  latin = words.map do |word|
    latinize(word)
  end
  latin.join(" ")
end

def latinize(word)
  vowels = "aeiou"
  latin_word = []
  idx = nil
  chars = word.chars
  chars.each_with_index do |l, i|
    if l == "u" && chars[i-1] == "q" || chars[i-1] == "Q"
      idx = i+1
      break
    elsif vowels.include?(l)
      idx = i
      break
    end
  end
  taken = chars.take(idx)
  dropped = chars.drop(idx)
  latin_word << dropped.join("") << taken.join("") << "ay"
  latin_word.join("")
end
