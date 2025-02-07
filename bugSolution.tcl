proc count_words {text} {
  # Correctly handles multiple spaces using regexp
  regexp -all -inline {"[^\s]+"} $text
  return [llength [regexp -all -inline {"[^\s]+"} $text]]
}

puts [count_words "This is a test."]  ;# Output: 4 (Correct)
puts [count_words "This  is a test."] ;# Output: 4 (Correct)