ALPHABETS = {

'.-'  => 'A',
'-...'  => 'B',
'-.-.'  => 'C',
'-..'  => 'D',
'.'  => 'E',
'..-.'  => 'F',
'--.'  => 'G',
'....'  => 'H',
'..'  => 'I',
'.---'  => 'J',
'-.-'  => 'K',
'.-..'  => 'L',
'--'  => 'M',
'-.'  => 'N',
'---'  => 'O',
'.--.'  => 'P',
'--.-'  => 'Q',
'.-.'  => 'R',
'...'  => 'S',
'-'  => 'T',
'..-'  => 'U',
'...-'  => 'V',
'.--'  => 'W',
'-..-'  => 'X',
'-.--'  => 'Y',
'--..'  => 'Z',
'-----'  => '0',
'.----'  => '1',
'..---'  => '2',
'...--'  => '3',
'....-'  => '4',
'.....'  => '5',
'-....'  => '6',
'--...'  => '7',
'---..'  => '8',
'----.'  => '9',
'.-.-.-'  => '.',
'--..--'  => ',',
'..--..'  => '?',
'.----.'  => "'" ,
'-.-.--'  => '!',
'-..-.'  => '/',
'-.--.'  => '(',
'-.--.-'  => ')',
'.-...'  => '&',
'---...'  => ':',
'-.-.-.'  => ';',
}

def decode_char(char)
  return ALPHABETS[char]
end

def decode_word(word)
  decoded_word = ''
  char_array = word.split(' ')
  char_array.each do |char|
    decoded_word += decode_char(char.to_s.upcase)
    decoded_word += ' '
  end
  
  return decoded_word.rstrip
end

# 

def decode(sentense)
  decoded_sentence = ''
  words_array = sentense.to_s.split('   ')
  puts words_array
  words_array.each do |word|
    decoded_sentence += decode_word(word)
    decoded_sentence += '   '
  end
  return decoded_sentence.rstrip
end
