formatter = "%{first} %{second} %{third} %{fourth}"

#puts 1 2 3 4
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
#puts onetwo three four
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
#puts true false true false
puts formatter % {first: true, second: false, third: true, fourth: false}
#puts %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

#puts all these strings on one line separated by a space.
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
