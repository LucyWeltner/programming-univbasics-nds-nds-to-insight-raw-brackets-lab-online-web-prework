$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  total = 0
  i = 0 
  j = 0
  directors_hash = {}
  while i < nds.length do
    while j < nds[i][:movies].length do
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
