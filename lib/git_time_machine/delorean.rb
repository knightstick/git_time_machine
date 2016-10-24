module GitTimeMachine
  class Delorean
    attr_reader :velocity

    def initialize
      @velocity = 0
    end

    def accelerate(speed)
      @velocity += speed
    end
  end
end
