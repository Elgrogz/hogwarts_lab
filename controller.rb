require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('models/student')
require_relative('models/house')

#shows all students
get '/students' do
  @students = Student.all()
  erb(:index)
end

#create new student with a form
get '/students/new' do
  erb(:new)
end

#'save' student in the db
post '/students' do
  student = Student.new(params)
  student.save
  redirect to('/students')
end

# #delete a student from the db
# post '/students/:id/delete' do
#   student.destroy( params[:id])
#   redirect to('/students') 
# end

#show an individual student by id
get '/students/:id' do
  @student = Student.find( params[:id] )
  erb(:show)
end

# #show the edit student form
# get '/students/:id/edit' do
#   @student = student.find(params[:id])
#   erb(:edit)
# end

# #actually update (save) a student using it's id
# post '/students/:id' do
#   student.update(params)
#   redirect to("/students/#{params[:id]}")
# end

