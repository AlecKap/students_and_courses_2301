require './lib/course'
require './lib/student'

class Gradebook
  attr_reader :courses, :instructor
  def initialize(instructor)
    @courses = []
    @instructor = instructor

  end

  def add_courses(course)
    #code
  end

  def list_all_courses
    #code
  end

  def students_below
    #code
  end
end