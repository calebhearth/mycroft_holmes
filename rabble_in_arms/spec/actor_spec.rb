require 'spec_helper'

module RabbleInArms
  describe Actor do
    it 'has zero hit points' do
      actor = Actor.new

      expect(actor.current_hit_points).to eq(0)
    end

    it 'has a location, which is an array' do
      actor = Actor.new

      expect(actor.location).to eq([0, 0])
    end

    it 'is owned by the null player' do
      actor = Actor.new
    end

    it 'can have its location set' do
      actor = Actor.new

      actor.location = [1, 1]

      expect(actor.location).to eq([1, 1])
    end

    it 'has a null order' do
      actor = Actor.new

      expect(actor.order).to eq(:null_order)
    end

    it 'has mineral and gas costs to be built' do
      expect(Actor.cost).to eq([0, 0])
    end

    it 'has mineral cost to be built' do
      expect(Actor.mineral_cost).to eq(0)
    end

    it 'has gas cost to be built' do
      expect(Actor.gas_cost).to eq(0)
    end

    it 'knows how long it takes to be built' do
      expect(Actor.build_time).to eq(0)
    end
  end
end
