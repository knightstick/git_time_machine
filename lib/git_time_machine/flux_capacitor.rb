module GitTimeMachine
  class FluxCapacitor
    class NoFuelError < RuntimeError; end

    def initialize
      @plutonium = nil
    end

    def setup
      @plutonium = :weapons_grade
    end

    def capacitate!
      raise NoFuelError unless plutonium_present?

      @flux = :capacitated
    end

    def capacitated?
      flux == :capacitated
    end

    private

    attr_reader :flux
    attr_reader :plutonium

    def plutonium_present?
      !plutonium.nil?
    end
  end
end
