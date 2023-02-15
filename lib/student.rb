
class Student
  attr_reader :name, :age, :scores, :grade
  def initialize(student_info)
    @name = student_info[:name]
    @age = student_info[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade 
    scores_total = @scores.sum(0.0)
    num_of_scores = @scores.size
    @grade = scores_total / num_of_scores
    @grade
  end
end