require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
      @course = Course.new("Calculus", 2)
    end
  describe 'exists' do
    it '#initializes' do
      expect(@course).to be_a(Course)
    end
  end

  describe 'has course info' do
    it '#name' do
      expect(@course.name).to eq("Calculus")
    end
    
    it '#capacity' do
      expect(@course.capacity).to be(2)
    end

    it '#scores' do
      expect(@course.students).to eq([])
    end

    it '#full?' do
      expect(@course.full?).to be(false)
    end
  end

  describe '#enroll' do
    it 'enrolls student and changes full status' do
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      @course.enroll(student1)
      @course.enroll(student2)

      expect(@course.students).to eq([student1, student2])
      expect(@course.full?).to be(true)
    end

    it 'cant enroll if course is full' do
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      student3 = Student.new({name: "Sarah", age: 25})
      @course.enroll(student1)
      @course.enroll(student2)
      @course.enroll(student3)
      
      expect(@course.students).to eq([student1, student2])
    end

    
  end
end
