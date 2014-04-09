require 'colorize'

train_lines = {"N" => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
              "L" => ["8th",  "6th", "Union Square", "3rd", "1st"],
              "6" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]}


puts "============================================================="
puts "What train would you like to get on?  "
puts "(1) N"
puts "(2) L"
puts "(3) 6"
line_on = gets.chomp.to_i
puts "Which stop: #{train_lines.values[line_on-1]}: > "
stop_on = gets.chomp

puts "What train do you want to get off?  "
puts "(1) N"
puts "(2) L"
puts "(3) 6"
line_off = gets.chomp.to_i
print "Which stop: #{train_lines.values[line_off-1]}: > "
stop_off = gets.chomp


if line_on = line_off
  stop_on_index = train_lines.values[line_on-1].index(stop_on)
  stop_off_index = train_lines.values[line_off-1].index(stop_off)
    if stop_on_index - stop_off_index < 0
      length = (stop_off_index - stop_on_index)
    else
      length = (stop_on_index - stop_off_index)
    end

else line_on != line_off
  stop_on_index = train_lines.values[line_on-1].index(stop_on)
  intersection = train_lines["N"]&train_lines["L"]&train_lines["6"]   ## index this
    if line_on == "1"
      stop_on_intersection_index = 4 #train_lines.values[4]              ## index
    elsif line_on == "2"
      stop_on_intersection_index = 2 #train_lines.values[2]
    else line_on == "3"
      stop_on_intersection_index = 4 #train_lines.values[4]
    end
  # stop_on_intersection_index = train_lines.values[line_on-1].index(intersection)  #index
    if stop_on_index - stop_on_intersection_index < 0
      length1 = (stop_on_intersection_index - stop_on_index)
    else
      length1 = (stop_on_index - stop_on_intersection_index)
    end

  stop_off_index = train_lines.values[line_off-1].index(stop_off)
    if line_off == "1"
      stop_off_intersection_index = 4 #train_lines.values[4]              ## index
    elsif line_off == "2"
      stop_off_intersection_index = 2 #train_lines.values[2]
    else line_off == "3"
      stop_off_intersection_index = 4 #train_lines.values[4]
    end
  if stop_off_index - stop_off_intersection_index < 0
    length2 = (stop_off_intersection_index - stop_off_index)
  else
    length2 = (stop_off_index - stop_off_intersection_index)
  end
  length = length1 + length2
end
  


puts "====================================="
puts "You traveled #{length} stop(s).".bold.colorize( :blue )
puts "====================================="
puts " "


