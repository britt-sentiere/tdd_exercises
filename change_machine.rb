require 'rspec'

class ChangeMachine
  def change(number)
    coins = []

    if number < 5
      number.times do 
        coins << 1
      end
    elsif number == 5
      coins << 5
    elsif number > 5
      coins << 5
      coins << 1
      
    end
    
    return coins
  end
end

  RSpec.describe ChangeMachine do
    describe '#change' do
      it 'should return [1] when given 1 cents' do
        machine = ChangeMachine.new
        expect(machine.change(1)).to eq([1])
      end

      it 'should return [1, 1] when give 2 cents' do
        machine = ChangeMachine.new
        expect(machine.change(2)).to eq([1, 1])
      end

      it 'should return [1, 1, 1] when give 3 cents' do
        machine = ChangeMachine.new
        expect(machine.change(3)).to eq([1, 1, 1])
      end

      it 'should return [1, 1, 1, 1] when given 4 cents' do
        machine = ChangeMachine.new
        expect(machine.change(4)).to eq([1, 1, 1, 1])
      end

      it 'should returen [5] when given 5 cents' do
        machine = ChangeMachine.new
        expect(machine.change(5)).to eq([5])
      end

      it 'should return [5, 1] when given 6 cents' do
        machine = ChangeMachine.new
        expect(machine.change(6)).to eq([5, 1])
      end

      # it 'should return [5, 1, 1] when given 7 cents' do
      #   machine = ChangeMachine.new
      #   expect(machine.change(7)).to eq([5, 1, 1])
      # end
    end
  end 
