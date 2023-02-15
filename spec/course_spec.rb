require 'rspec'
require './lib/student'
require './lib/course'

RSpec.describe Course do
  describe '#inialize' do
    it 'exists' do
      course = Course.new("Calculus", 2) 
      
      expect(course).to be_a(Course)
    end
    
    it 'course has a name' do
      course = Course.new("Calculus", 2) 
      
      expect(course.name).to eq("Calculus")
    end
    
    it 'course has capacity' do
      course = Course.new("Calculus", 2) 
      
      expect(course.capacity).to eq(2)
    end
    
    it 'course can have scores' do
      course = Course.new("Calculus", 2) 
      
      expect(course.students).to eq([])
    end
  end
  describe 'course size can fill up' do
    
    it 'can check if at capacity' do
    course = Course.new("Calculus", 2) 
    
    expect(course.full?).to eq(false)
  end
  
  it 'can enroll students' do
    course = Course.new("Calculus", 2)     
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    
    course.enroll(student1)
    course.enroll(student2)

    expect(course.students).to eq([student1, student2])
    expect(course.full?).to eq(true)
    end
  end
end
