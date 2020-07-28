class String
  def initial
    self[0,1]
  end
end

def input_students
  puts "Please enter the name of the student"
  puts "Leave blank if you wish to finish"
  # creation of empty array
  students = []
  name = gets.chomp
  # repeat request until name is empty
  while !name.empty? do
    puts "Please enter students nationality"
    nationality = gets.chomp
    puts "Please enter students favourite hobbie"
    fav_hobbie = gets.chomp
    puts "Please enter students height in feet, i.e 5.8"
    height = gets.chomp
    # add the student hash to the array
    students << {name: name, nationality: nationality, hobbie: fav_hobbie, height: height, cohort: :november}
    puts "Now we have #{students.count} students"
    # get more names from the user
    puts "Please enter the name of the next student"
    puts "Leave blank if you wish to finish"
    name = gets.chomp
  end
  # return the array of students
  students
end
# 2. print the header
def print_header
  puts "The Students of Villains Academy".center(88)
  puts "--------------".center(88)
end
# 3. print the students names from within the array - with index
def print(students)
  while true do
    students.each.with_index(1) do |student, index|
#     if student[:name].initial == "M" && student[:name].length < 12
      puts "#{index}. #{student[:name]}, Nationality: #{student[:nationality]}, Favourite Hobbie: #{student[:hobbie]}, Height(ft): #{student[:height]} (#{student[:cohort]} cohort)"
    end
  break
  end
end
# 4. print the total of the students
def print_footer(names)
  puts "Overall, we have #{names.count} great student(s)".center(90)
end
# 5. call methods
students = input_students
print_header
print(students)
print_footer(students)
