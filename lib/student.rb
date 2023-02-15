class Student
  attr_reader :name, :age, :scores
  
  def initialize(student)
    @name = student[:name]
    @age = student[:age]
    @scores = []
    @grades = []
  end

  def log_score(score)
    @scores.push(score)
  end

  def grade
  grade = @scores.sum(0.0) / @scores.size
  @grades << grade
  end
end
