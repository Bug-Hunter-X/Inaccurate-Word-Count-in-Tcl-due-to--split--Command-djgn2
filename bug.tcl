proc count_words {text} {
  # Incorrectly handles multiple spaces
  set words [split $text]
  return [llength $words]
}

puts [count_words "This is a test."]  ;# Output: 4 (Incorrect)
puts [count_words "This  is a test."] ;# Output: 5 (Incorrect)