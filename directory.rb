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
           name = gets.chomp
           print "Which cohort do they belong to? \n".center 150
           cohort = gets.chomp
           print "Which country are they from? \n".center 150
           country = gets.chomp
           print "What is their main hobby? \n".center 150
           hobby = gets.chomp
           print "Would you like to add a student? (Answer yes or no)\n".center 150
           add_student_answer = gets.chomp

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

def print_footer(students)
  puts "Overall, we have #{students.length} great students".center 50
end
#nothing happens until we call the method
students = input_students
print_header
print_students(students)
print_footer(students)
