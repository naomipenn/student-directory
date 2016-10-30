def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat the code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
puts "The students of my cohort at Makers Academy"
puts "-------------"
end

def print(students)
  i=0
  while i < students.length
        student = students[i]
      puts "#{i} #{student[:name]} (#{student[:cohort]} cohort)"
      i += 1
    end
    #students.each.with_index(1) do |student, index|
    #puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12
    #end
  end

def print_footer(students)
  puts "Overall, we have #{students.length} great students"
end
#nothing happens until we call the method
students = input_students
print_header
print(students)
print_footer(students)
