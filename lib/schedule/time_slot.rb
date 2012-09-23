module Schedule
  class TimeSlot
    attr_accessor :time, :events

    def initialize(time, events)
      self.time = time
      self.events = events
    end
  end
end