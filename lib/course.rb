class Course
  attr_reader :name, :capacity, :students
  
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    if @students != []
      true
    else
      false
    end
  end

  def enroll(student)
    @students.push(student)
    # @capacity += 1
  end
end