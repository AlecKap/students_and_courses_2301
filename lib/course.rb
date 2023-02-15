require './lib/student'

class Course
  attr_reader :name, :capacity, :students
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
  end

  def full?
    if @students.size < @capacity
      @full = false
    else
      @full = true
    end
  end

  def enroll(student)
    if @students.size < @capacity
      @students << student
    else
      "no room"
    end
  end
end
