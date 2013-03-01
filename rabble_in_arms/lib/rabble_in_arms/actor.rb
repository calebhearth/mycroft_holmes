module RabbleInArms
  class Actor
    def current_hit_points
      0
    end

    def location
      [0, 0]
    end

    def player
      null_player
    end

    def order
      null_order
    end

    def self.cost
      [mineral_cost, gas_cost]
    end

    def self.mineral_cost
      0
    end

    def self.gas_cost
      0
    end

    def self.build_time
      0
    end

    private

    def null_player
      :null_player
    end

    def null_order
      :null_order
    end
  end
end
