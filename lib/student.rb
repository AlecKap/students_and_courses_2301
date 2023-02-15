
class Student
  attr_reader :name, :age, :scores, :grade
  def initialize(student_info)
    @name = student_info[:name]
    @age = student_info[:age]
    @scores = []
    @grade = 0
  end
end