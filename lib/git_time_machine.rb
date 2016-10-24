require "git_time_machine/version"
require "git_time_machine/time_machine"

module GitTimeMachine
  module TravelThroughTime
    class LawsOfPhysicsError < RuntimeError; end

    def self.travel_through_time
      time_machine = TimeMachine.new
      time_machine.get_ready!

      if can_travel_through_time?(time_machine)
        time_machine.back_to "1955"
      else
        raise LawsOfPhysicsError, 'Cannot Travel Through Time'
      end
    end

    private

    def self.can_travel_through_time?(time_machine)
      time_machine.flux_capacitated? &&
        (time_machine.velocity >= 88)
    end
  end
end
