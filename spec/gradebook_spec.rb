require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Jameson")
  end
  describe 'exists' do
    it '#initializes' do
      expect(@gradebook).to be_a(Gradebook)
    end
  end

  describe 'has info' do
    it '#instructor name' do
      expect(@gradebook.instructor).to eq("Jameson")
    end
    
    it '#courses' do
      expect(@gradebook.courses).to eq([])
    end
  end

  describe 'can add courses' do
    it '#add_course' do
      course1 = Course.new("Calculus", 2)
      added_courses = @gradebook.add_course(course1)

      expect(added_courses).to eq([course1])
    end
  end

  describe 'can list all students' do
    it '#list_all_students' do
      expect(@gradebook.list_all_students).to be_a(Hash)
      expect(@gradebook.list_all_students.first).to be_a(Hash)
      

    end

  # describe 'lists students below passing' do
  #   it '#students_below' do
  #     expect(@gradebook.students_below).to 
  #   end
  # end
end