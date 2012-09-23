require "spec_helper"
describe Schedule::Printer do
  describe "#print_data" do
    it "prints the date" do
      printer = Schedule::Printer.new({Date.new(2012, 10, 8) => []})

      printer.stub(:print_schedule_table)

      STDOUT.should_receive(:puts).with("Monday, October 8, 2012")

      printer.print_schedule
    end

    it "prints the schedule table" do
      printer = Schedule::Printer.new({Date.new => [["8:00 - 9:00 AM", {:value => "Registration & Breakfast", :colspan => 2}]]})

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