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

def interactive_menu
    students = []
    loop do
        puts "1. Input the students"
        puts "2. Show the students"
        puts "9. Exit"
        selection = gets.chomp
        case selection
        when "1"
            students = input_students
        when "2"
            print_header
            print(students)
            print_footer(students)
        when "9"
            exit
        else
            puts "I don't know what you mean, try again"
        end
    end
end

interactive_menu
