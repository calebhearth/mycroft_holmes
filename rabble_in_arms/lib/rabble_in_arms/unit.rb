module RabbleInArms
  class Unit < Actor
    def speed
      1
    end

    def move(location)
      @location = location
    end

    def attack(target)
      @attacking = target
    end

    def attacking?(target)
      @attacking == target
    end
  end
end
