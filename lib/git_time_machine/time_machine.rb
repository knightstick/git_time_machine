require 'git_time_machine/delorean'
require 'git_time_machine/flux_capacitor'

module GitTimeMachine
  class TimeMachine
    extend ::Forwardable

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

    def flux_capacitated?
      flux_capacitor.capacitated?
    end

    def back_to(year_string)
      year = year_string.to_i
      now = Time.now
      new_time_space_continuum = Time.new(
        year, now.month, now.day, now.hour, now.min, now.sec
      )

      puts "*********************************************"
      puts "Time Travel Succeeded"
      puts "*********************************************"
      puts "The Time Now is: #{new_time_space_continuum.strftime("%I:%M%p on %A %d %B %Y")}"
    end

    private

    attr_reader :delorean

    attr_reader :flux_capacitor
  end
end
