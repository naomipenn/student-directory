# creating an interactive menu
def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user wat to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print_students(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

# Ask for info on students
def input_students
    print "Would you like to add a student? (Answer yes or no) \n".center 150
    add_student_answer = gets.chomp
    # create an empty array
    students = []
          # while the name is not empty, repeat this code
          while add_student_answer == "yes"
           # get another name from the user
           print "Please enter the student's name \n".center 150
           name = gets.delete("\n")
           print "Which cohort do they belong to? \n".center 150
           cohort = gets.delete("\n")
           print "Which country are they from? \n".center 150
           country = gets.delete("\n")
           print "What is their main hobby? \n".center 150
           hobby = gets.delete("\n")
           print "Would you like to add a student? (Answer yes or no)\n".center 150
           add_student_answer = gets.delete("\n")

           #add the student hash to the array
           students << {:name => name, :cohort => cohort, :country => country, :hobby => hobby}
        end
 #return the array of students
 students
end

def print_students(students)
  students.each.with_index(1) do |student, index|
    print "#{index} #{student[:name]}, #{student[:cohort]} cohort, from #{student[:country]}, enjoys #{student[:hobby]} \n".center 150
  end
end

def print_header
  puts "The students of my cohort at Makers Academy".center 150
  puts "-------------".center 150
end

def pluralize noun, number
  noun += "s" if number > 1
  noun
end

str = pluralize "student", 1
raise "failed basic pluralize" unless str == "student"
str = pluralize "student", 3
raise "failed basic pluralize" unless str == "students"

def print_footer(students)
  puts "Overall, we have #{students.length} great #{pluralize 'student', students.length}".center 50
end
#nothing happens until we call the method
interactive_menu
students = input_students
print_header
print_students(students)
print_footer(students)
