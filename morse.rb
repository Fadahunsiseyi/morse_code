def decode_char(cha)
  morse_list = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  morse_list[cha]
end

def decode_word(words)
  words.split.map { |word| decode_char(word) }.join
end

def decode_message(msgs)
  msgs.split('   ').map { |msg| decode_word(msg) }.join(' ')
end
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...') # A BOX FULL OF RUBIES
puts decode_message('-- -.--   -. .- -- .') # My name
puts decode_char('.-') # A
