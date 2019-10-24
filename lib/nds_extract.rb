$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  pp nds
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
  while i < nds.length do
    while j < nds[i].length do
      money = nds[i][:movies][j][:worldwide_gross]
      total += money
      j += 1
    end
    i += 1
    j = 0
  end
  return total
end 

directors_totals(directors_database)
