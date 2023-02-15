require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
  describe '#inialize' do
    it 'exists' do
      gradebook = Gradebook.new("Prof X") 
      
      expect(gradebook).to be_a(Gradebook)
    end
    
    it 'gradebook has an instructor' do
      gradebook = Gradebook.new("Prof X") 
      
      expect(gradebook.instructor).to eq("Prof X")
    end
    
    it 'course can have scores' do
      gradebook = Gradebook.new("Prof X") 
      
      expect(gradebook.courses).to eq([])
    end
  end
  
  describe 'evaluates the gradebook' do
    it 'adds courses' do
      gradebook = Gradebook.new("Prof X")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Mutantology", 2)
      
      expect(gradebook.courses).to eq([])
      expect(gradebook.add_course(course1)).to eq([course1])
      expect(gradebook.courses).to eq([course1])
    end

    xit 'can list all students' do
      gradebook = Gradebook.new("Prof X")
      course1 = Course.new("Calculus", 2)

      expect(gradebook.list_all_students).to eq([student1, student2])
    end
  end
end