require_relative('../models/student')
require('pry-byebug')

student1 = Student.new({
"first_name" => "Harry",
"last_name" => "Potter",
"house" => "Gryffindor",
"age" => 14
  })

student2 = Student.new({
"first_name" => "Ron",
"last_name" => "Weasely",
"house" => "Gryffindor",
"age" => 14
  })

student3 = Student.new({
"first_name" => "Draco",
"last_name" => "Malfoy",
"house" => "Slytherin",
"age" => 14
  })

student1.save
student2.save
student3.save

# binding.pry
# nil