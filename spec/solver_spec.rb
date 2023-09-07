require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context ' testing factorial method' do
    it ' should raise error if input number is less than 0' do
      expect(@solver.factorial(-1)).to eq 'Please enter a number greater than or equal to 0'
    end

    it 'The factorial method will return 1 if number is equal to 0' do
      expect(@solver.factorial(0)).to eq 1
    end

    it 'The factorial method will return 1 if number is equal to 1' do
      expect(@solver.factorial(1)).to eq 1
    end

    it 'The factorial method will return the factorial value of a number greater than 0' do
      expect(@solver.factorial(4)).to eq 24
    end
  end

  context 'testing reverse method' do
    it 'should revese the argument string' do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end

    it 'should return an empty string if the argument is empty' do
      expect(@solver.reverse('')).to eq ''
    end
  end

  context 'testing fizzbuzz method' do
    it 'should return fizz if the argument is divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq 'fizz'
    end

    it 'should return buzz if the argument is divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq 'buzz'
    end

    it 'should return fizzbuzz if the argument is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'should return number if the argument is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(4)).to eq '4'
    end
  end
end
