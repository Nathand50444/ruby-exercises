def caesar_cipher(word, number)
    ascii = word.chars.map {|c| c.ord}
    shifted = ascii.map do |c|
      if ('a'..'z').include?(c.chr.downcase)
        base = c >= 'a'.ord ? 'a'.ord : 'A'.ord
        ((c - base + number) % 26 + base)
      else
        c
      end
    end
    shifted.map {|c| c.chr}.join
  end