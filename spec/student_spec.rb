require 'rspec'
require './lib/student'

RSpec.describe Student do
  describe '#inialize' do
    it 'exists' do
      student = Student.new({name: "Morgan", age: 21})
      
      expect(student).to be_a(Student)
    end
    
    it 'student has an age' do
      student = Student.new({name: "Morgan", age: 21})
      
      expect(student.age).to eq(21)
    end
    
    it 'student can have scores' do
      student = Student.new({name: "Morgan", age: 21})
      
      expect(student.scores).to eq([])
    end
  end
  describe 'grades and scores' do
    it 'student earns scores' do
      student = Student.new({name: "Morgan", age: 21})
      
      expect(student.log_score(89)).to eq([89])
    end
    
    it 'student earns scores' do
      student = Student.new({name: "Morgan", age: 21})
      
      expect(student.log_score(78)).to eq([78])
    end
    
    it 'student can have scores' do
      student = Student.new({name: "Morgan", age: 21})
      student.log_score(89)
      student.log_score(78)
      
      expect(student.scores).to eq([89, 78])
    end
    
    it 'student can have scores' do
      student = Student.new({name: "Morgan", age: 21})
      student.log_score(89)
      student.log_score(78)
      
      expect(student.grade).to eq([83.5])
    end
  end
end