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

  # describe 'can list all courses' do
  #   it '#list_all_courses' do
  #     expect(@gradebook.list_all_courses).to 
  #   end

  # describe 'lists students below passing' do
  #   it '#students_below' do
  #     expect(@gradebook.students_below).to 
  #   end
  # end
end