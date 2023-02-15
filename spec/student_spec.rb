require './lib/student'

RSpec.describe Student do
  describe 'exists' do
    it '#initializes' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student).to be_a(Student)
    end
  end

  describe 'has student info' do
    before(:each) do
      @student = Student.new({name: "Morgan", age: 21})
    end
    it '#name' do
      expect(@student.name).to eq("Morgan")
    end
    
    it '#age' do
      expect(@student.age).to eq(21)
    end

    it '#scores' do
      expect(@student.scores).to eq([])
    end

    xit '#grade' do
      expect(@student.grade).to eq(83.5)
    end
  end
end