require 'rspec'
require_relative '../solver'

describe Solver do
  context 'testing the constructor' do
    it 'should create a new solver object' do
      solver = Solver.new(8)
      expect(solver).to be_an_instance_of Solver
    end
  end

  context 'testing the solve method' do
    it 'should return the factorial of the number' do
      solver = Solver.new(5)
      expect(solver.factorial).to eq(120)
    end
  end

  context 'testing the solve method' do
    it 'should return the factorial of the number' do
      solver = Solver.new(0)
      expect(solver.factorial).to eq(1)
    end
  end

  context 'testing the solve method' do
    it 'should return the factorial of the number' do
      solver = Solver.new(-5)
      expect { solver.factorial }.to raise_error(ArgumentError)
    end
  end

  context 'testing the reverse method' do
    it 'should return the reverse of the string' do
      solver = Solver.new('hello')
      expect(solver.reverse).to eq('olleh')
    end
  end

  context 'testing the fizzbuzz method' do
    it 'should return the correct string' do
      solver = Solver.new(15)
      expect(solver.fizzbuzz).to eq('fizzbuzz')
    end
  end

  context 'testing the fizzbuzz method' do
    it 'should return the correct string' do
      solver = Solver.new(3)
      expect(solver.fizzbuzz).to eq('fizz')
    end
  end

  context 'testing the fizzbuzz method' do
    it 'should return the correct string' do
      solver = Solver.new(5)
      expect(solver.fizzbuzz).to eq('buzz')
    end
  end

  context 'testing the fizzbuzz method' do
    it 'should return the correct string' do
      solver = Solver.new(7)
      expect(solver.fizzbuzz).to eq('7')
    end
  end
end
