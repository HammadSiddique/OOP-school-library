require './person'
require './classroom'

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(name, age, parent_permission)
    @classroom = Classroom.new(classroom)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
