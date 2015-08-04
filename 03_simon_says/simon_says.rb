# require "titleize"  # See line 24

def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n = 2)
  ([string] * n).join ' '
end

def start_of_word(string, n)
  string[0...n]
end

def first_word(string)
  string.split[0]
end

=begin
# This little workaround failed because of the word 'over' in 'The Bridge over the River Kwai'. Dammit.
def titleize(title)
  title.titleize
end
=end

# I got this from a StackOverflow post. Hey, I was in over my head.
def titleize(name)
  lowercase_words = %w{a an the and but or for nor of over}
  name.split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end
