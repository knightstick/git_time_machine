require 'git_time_machine/flux_capacitor'

module GitTimeMachine
  class TimeMachine
    def initialize
      @flux_capacitor = GitTimeMachine::FluxCapacitor.new
    end

    def get_ready!
      flux_capacitor.setup
      flux_capacitor.capacitate!
    end

    def back_to(time_string)
      raise "BOOM"
    end

    def flux_capacitated?
      flux_capacitor.capacitated?
    end

    def velocity
      0
    end

    private

    attr_reader :flux_capacitor
  end
end
