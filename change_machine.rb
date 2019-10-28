require 'rspec'

class ChangeMachine
  def change(cents)
    denominations = [25, 10, 5, 1]
    coins = []

    denominations.each do |denomination|
      while cents >= denomination
        coins << denomination
        cents -=denomination
      end
    end 
    
    return coins
  end
end

  RSpec.describe ChangeMachine do
    describe '#change' do
      let(:machine) { ChangeMachine.new }

      it 'should return [1] when given 1' do
        expect(machine.change(1)).to eq([1])
      end

      it 'should return [1, 1] when given 2' do
        expect(machine.change(2)).to eq([1, 1])
      end

      it 'should return [1, 1, 1] when given 3' do
        expect(machine.change(3)).to eq([1, 1, 1])
      end

      it 'should return [1, 1, 1, 1] when given 4' do
        expect(machine.change(4)).to eq([1, 1, 1, 1])
      end

      it 'should return [5] when given 5' do
        expect(machine.change(5)).to eq([5])
      end

      it 'should return [5, 1] when given 6' do
        expect(machine.change(6)).to eq([5, 1])
      end

      it 'should return [5, 1, 1] when given 7' do
        expect(machine.change(7)).to eq([5, 1, 1])
      end

      it 'should return [5, 1, 1, 1] when given 8' do
        expect(machine.change(8)).to eq([5, 1, 1, 1])
      end

      it 'should return [5, 1, 1, 1, 1] when given 9' do
        expect(machine.change(9)).to eq([5, 1, 1, 1, 1])
      end

      it 'should return [10] when given 10' do
        expect(machine.change(10)).to eq([10])
      end

      it 'should return [10, 1] when given 11' do
        expect(machine.change(11)).to eq([10, 1])
      end

      it 'should return [10, 1, 1] when given 12' do
        expect(machine.change(12)).to eq([10, 1, 1])
      end

      it 'should return [10, 5] when given 15' do
        expect(machine.change(15)).to eq([10, 5])
      end

      it 'should return [10, 5, 1] when given 16' do
        expect(machine.change(16)).to eq([10, 5, 1])
      end

      it 'should return [10, 5, 1, 1] when given 17' do
        expect(machine.change(17)).to eq([10, 5, 1, 1])
      end

      it 'should return [10, 10] when given 20' do
        expect(machine.change(20)).to eq([10, 10])
      end

      it 'should return [10, 10, 1] when given 21' do
        expect(machine.change(21)).to eq([10, 10, 1])
      end

      it 'should return [10, 10, 1, 1] when given 22' do
        expect(machine.change(22)).to eq([10, 10, 1, 1])
      end

      it 'should return [25] when given 25' do
        expect(machine.change(25)).to eq([25])
      end

      it 'should return [25, 1] when given 26' do
        expect(machine.change(26)).to eq([25, 1])
      end

      it 'should return [25, 1, 1] when given 27' do
        expect(machine.change(27)).to eq([25, 1, 1])
      end

      it 'should return [25, 5] when given 30' do
        expect(machine.change(30)).to eq([25, 5])
      end

      it 'should return [25, 5, 1] when given 31' do
        expect(machine.change(31)).to eq([25, 5, 1])
      end

      it 'should return [25, 10] when given 35' do
        expect(machine.change(35)).to eq([25, 10])
      end

      it 'should return [25, 10, 5, 1] when given 41' do
        expect(machine.change(41)).to eq([25, 10, 5, 1])
      end

      it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119' do
        expect(machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
      end

      it 'should return [25, 25, 25, 25, 25] when given 125' do
        expect(machine.change(125)).to eq([25, 25, 25, 25, 25])
      end
    end
  end