require './lib/student'

RSpec.describe Student do
  before(:each) do
      @student = Student.new({name: "Morgan", age: 21})
    end
  describe 'exists' do
    it '#initializes' do
      expect(@student).to be_a(Student)
    end
  end

  describe 'has student info' do
    
    it '#name' do
      expect(@student.name).to eq("Morgan")
    end
    
    it '#age' do
      expect(@student.age).to eq(21)
    end

    it '#scores' do
      expect(@student.scores).to eq([])
    end

  end

  describe '#logged_score' do
    it 'logs score' do
      @student.log_score(89)
      @student.log_score(78)

      expect(@student.scores).to eq([89, 78])
    end
  end

  describe '#grade' do
    it 'gives an average of scores' do
      @student.log_score(89)
      @student.log_score(78)

      expect(@student.grade).to be(83.5)
    end
  end
end