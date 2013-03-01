require 'spec_helper'

module RabbleInArms
  describe Building do
    it "is an actor" do
      expect(building).to be_an Actor
    end

    def building
      Building.new
    end
  end
end
