require './lib/course'
require './lib/student'

class Gradebook
  attr_reader :courses, :instructor
  def initialize(instructor)
    @courses = []
    @instructor = instructor

  end

  def add_course(course)
    # course_info = {
    #   name: course[:name]
    #   capacity: course[:capacity]
    #   students: = course[:students]
    #   full: course[:full]
    # }
    @courses << course 
    # = Course.new(course_info)
  end

  def list_all_students
    @courses.each do |course| 
      course.select {|course| course[:students]}

    end
  end

  def students_below(threshold)
    #code
  end
end