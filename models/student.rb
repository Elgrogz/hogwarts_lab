require_relative('../db/sql_runner')

class Student

  attr_reader( :first_name, :last_name, :age, :id, :house_id)

  def initialize( options )
    @id = nil || options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
  end

  def full_name()
    return @first_name.concat(" #{@last_name}")
  end

  def save()
    sql = "INSERT INTO students (
      first_name,last_name,age,house_id ) VALUES 
      ('#{ @first_name }','#{ @last_name }','#{ @age }','#{ @house_id}') 
      RETURNING *;"
    student_data = SqlRunner.run(sql)
    @id = student_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students;"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM students WHERE id=#{id};"
    student = SqlRunner.run( sql )
    result = Student.new( student.first )
    return result
  end

  def self.update( options )
    sql = "UPDATE students SET
          first_name='#{options['first_name']}',
          last_name='#{options['last_name']}',
          age='#{options['age']}',
          house_id='#{options['house_id']}',
          WHERE id='#{options['id']}';"
    SqlRunner.run( sql )
  end

  def self.destroy( id )
    sql = "DELETE FROM students WHERE id=#{id};"
    SqlRunner.run( sql )
  end

  def house()
      sql = "SELECT * FROM houses WHERE id = #{@house_id};"
      house = SqlRunner.run( sql )
      return House.new(house[0])
  end



end
