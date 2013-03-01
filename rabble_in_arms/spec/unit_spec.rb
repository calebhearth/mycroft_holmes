require 'spec_helper'

module RabbleInArms
  describe Unit do
    it { should be_an Actor }

    it 'has a movement speed' do
      unit = Unit.new

      expect(unit.speed).to eq(1)
    end

    it 'can move to a location' do
      unit = Unit.new

      unit.move([1, 1])

      expect(unit.location).to eq([1, 1])
    end

    it 'can attack an actor' do
      unit = Unit.new
      target = Actor.new

      unit.attack(target)

      expect(unit).to be_attacking(target)
    end
  end
end
