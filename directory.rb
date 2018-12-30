def input_students
    puts "Please enter the name of the students"
    puts "To finish, just hit return twice"
    students = []
    name = gets.chomp

    while !name.empty? do
        puts "What is their country of birth?"
        birth = gets.chomp
        puts "What is your cohort?"
        cohort = gets.chomp
        students << {name: name, cohort: cohort, birth: birth}
        if students.length == 1
            puts "Now we have 1 student"
        else
            puts "Now we have #{students.count} students"
        end
        name = gets.chomp
    end
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print(names)
    counter = 0
    while counter < names.length do
          if (names[counter][:name][0] == 'T' && names[counter][:name].length < 12)
              puts "#{names[counter][:name]} (#{names[counter][:cohort]} cohort) and #{names[counter][:birth]}".center(100)
          end
          counter += 1
    end
end
def print_footer(names)
    puts "Overall, we have #{names.count} great students".center(100)
end
students = input_students
print_header
print(students)
print_footer(students)
