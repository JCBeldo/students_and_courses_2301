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
end