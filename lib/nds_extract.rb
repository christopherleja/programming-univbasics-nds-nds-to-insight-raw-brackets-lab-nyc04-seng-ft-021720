$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 director_name = []
total_gross = {}
 

row_index = 0
# puts directors_database
while row_index < directors_database.length do
  director_name.push("#{directors_database[row_index][:name]}")
  column_index = 0
  # puts "row_index = #{row_index}, directors_database.length = #{directors_database.length}"
  value_total = 0 
  while column_index < directors_database[row_index][:movies].length do
 # puts "column_index = #{column_index}"
  #puts "row index = #{row_index}"
  
    
        value_total += directors_database[row_index][:movies][column_index][:worldwide_gross]
        
       # puts "director #{director_name[row_index]}, value #{value_total}"
   
    column_index += 1
  end
  total_gross[director_name[row_index]] = value_total
    row_index += 1
  end
 
 total_gross
 
end

