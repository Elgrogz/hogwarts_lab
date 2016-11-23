require_relative('../models/student')
require_relative('../models/house')
require('pry-byebug')

house1 = House.new({
  "name" => "Gryffindor",
  "logo" => ""
  })

house2 = House.new({
  "name" => "Slytherin",
  "logo" => ""
  })

house3 = House.new({
  "name" => "Hufflepuff",
  "logo" => ""
  })

house4 = House.new({
  "name" => "Ravenclaw",
  "logo" => ""
  })

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({
"first_name" => "Harry",
"last_name" => "Potter",
"age" => 14,
"house_id" => house1.id
  })

student2 = Student.new({
"first_name" => "Ron",
"last_name" => "Weasely",
"age" => 14,
"house_id" => house1.id
  })

student3 = Student.new({
"first_name" => "Draco",
"last_name" => "Malfoy",
"age" => 14,
"house_id" => house2.id
  })

student1.save
student2.save
student3.save


binding.pry
nil