module Schedule
  class Printer
    def initialize(data)
      @data = data
    end

    def print_schedule
      @data.keys.each do |date|
        print_date(date)
        print_schedule_table(@data[date])
      end
    end

    private
    def print_date(date)
      puts date.strftime("%A, %B %-d, %Y")
    end

    def print_schedule_table(time_slots)
      table = Terminal::Table.new do |t|
        t.headings = "Time", "Track 1", "Track 2"
        time_slots.each do |time_slot|
          if time_slot.events.length == 1
            t.add_row [format_time(time_slot.time), format_multi_track_event(time_slot.events[0])]
          else
            t.add_row [format_time(time_slot.time), format_single_track_event(time_slot.events[0]), format_single_track_event(time_slot.events[1])]
          end
          t.add_row :separator unless time_slot == time_slots.last
        end
      end

      puts table.render
    end

    private
    def format_time(time)
      {:value => time, :alignment => :center}
    end

    def format_single_track_event(event)
      {:value => event, :alignment => :center}
    end

    def format_multi_track_event(event)
      {:value => event, :colspan => 2, :alignment => :center}
    end
  end
end