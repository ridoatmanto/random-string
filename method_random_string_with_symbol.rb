def random_string(character_length)
  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a
  number = (0..9).to_a
  permitted_symbol = '!@#$%^&*()-+_={}[]:;<>,./?|`'.split('')

  all_character = lowercase + permitted_symbol + uppercase + number

  all_character.shuffle!
  all_character = all_character.sample(character_length)
  all_character.join
end

puts random_string(64)
