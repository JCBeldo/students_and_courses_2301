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
end
