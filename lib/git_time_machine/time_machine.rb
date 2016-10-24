require 'git_time_machine/delorean'
require 'git_time_machine/flux_capacitor'

module GitTimeMachine
  class TimeMachine
    extend Forwardable

    def_delegators :@delorean, :velocity

    def initialize
      @flux_capacitor = GitTimeMachine::FluxCapacitor.new
      @delorean = GitTimeMachine::Delorean.new
    end

    def get_ready!
      flux_capacitor.setup
      flux_capacitor.capacitate!
      delorean.accelerate(88)
    end

    def back_to(time_string)
      raise "BOOM"
    end

    def flux_capacitated?
      flux_capacitor.capacitated?
    end

    private

    attr_reader :delorean

    attr_reader :flux_capacitor
  end
end
