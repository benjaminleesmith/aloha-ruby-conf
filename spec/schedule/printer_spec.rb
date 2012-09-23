require "spec_helper"
describe Schedule::Printer do
  describe "#print_data" do
    it "prints the date" do
      printer = Schedule::Printer.new({Date.new(2012, 10, 8) => []})

      printer.stub(:print_schedule_table)

      STDOUT.should_receive(:puts).with("Monday, October 8, 2012")

      printer.print_schedule
    end

    it "prints out events" do
      schedule_data = {
          Date.new => [
              Schedule::TimeSlot.new("8:00 - 9:00 AM", ["Ruby: You've Changed, Bro.\nZach Holman","My Server for Aiur: How Starcraft Taught Me To Scale\nRichard Schneeman"])
          ]
      }

      printer = Schedule::Printer.new(schedule_data)

      printer.stub(:print_date)

      STDOUT.should_receive(:puts).with("+----------------+----------------------------+------------------------------------------------------+\n| Time           | Track 1                    | Track 2                                              |\n+----------------+----------------------------+------------------------------------------------------+\n| 8:00 - 9:00 AM | Ruby: You've Changed, Bro. | My Server for Aiur: How Starcraft Taught Me To Scale |\n|                |        Zach Holman         |                  Richard Schneeman                   |\n+----------------+----------------------------+------------------------------------------------------+")

      printer.print_schedule
    end

    it "prints events that span tracks" do
      schedule_data = {
          Date.new => [
            Schedule::TimeSlot.new("8:00 - 9:00 AM", ["Registration & Breakfast"])
          ]
      }

      printer = Schedule::Printer.new(schedule_data)

      printer.stub(:print_date)

      STDOUT.should_receive(:puts).with("+----------------+-------------+-------------+
| Time           | Track 1     | Track 2     |
+----------------+-------------+-------------+
| 8:00 - 9:00 AM | Registration & Breakfast  |
+----------------+-------------+-------------+")

      printer.print_schedule
    end
  end
end