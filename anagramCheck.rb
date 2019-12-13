require './lib/anagram.rb'

if ("#{ARGV[0]}" == "-man")
  puts `cat ./doc/anagram.md`
else
  anagram = Anagram.new("#{ARGV[0]}")
  response = anagram.anagram("#{ARGV[1]}")

  if (response[0])
    puts("#{ARGV[1]} is an anagram of #{ARGV[0]}")
  elsif (response[1] > 0)
    puts("#{ARGV[1]} is not an anagram of #{ARGV[0]}")
    puts("They had #{response[1]} letters in common, though!")
  else
    puts("#{ARGV[1]} is an antinym of #{ARGV[0]}")
  end
end
