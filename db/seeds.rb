require_relative('../models/student')
require_relative('../models/house')
require('pry-byebug')

house1 = House.new({
  "name" => "Gryffindor",
  "logo" => "http://vignette4.wikia.nocookie.net/harrypotter/images/3/37/Gryffindor_Crest.jpg/revision/latest?cb=20120317101541"
  })

house2 = House.new({
  "name" => "Slytherin",
  "logo" => "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=45479348"
  })

house3 = House.new({
  "name" => "Hufflepuff",
  "logo" => "http://i402.photobucket.com/albums/pp108/foreversparrow/Gaia/hflpf.jpg"
  })

house4 = House.new({
  "name" => "Ravenclaw",
  "logo" => "https://s-media-cache-ak0.pinimg.com/236x/7c/98/78/7c9878c68e85fd579f8a0fb9c4fee339.jpg"
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