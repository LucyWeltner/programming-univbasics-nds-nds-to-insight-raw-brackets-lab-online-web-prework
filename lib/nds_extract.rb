$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  p nds[0][:name]
  total = 0
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  i = 0 
  j = 0
  directors_hash = {}
  while i < nds.length do
    while j < nds[i][:movies].length do
      p nds[i][:movies][j]
      money = nds[i][:movies][j][:worldwide_gross]
      total += money
      j += 1
    end
    directors_hash[nds[i][:name]] = total
    i += 1
    j = 0
    total = 0
  end
  return directors_hash
end 

directors_totals(directors_database())
