require "terminal-table"
require "schedule/printer"
require "schedule/time_slot"
require "date"

class AlohaRubyConf
  SCHEDULE_DATA = {
    Date.new(2012, 10, 8) => [
      Schedule::TimeSlot.new("8:00 - 9:00 AM", ["Registration & Breakfast"]),
      Schedule::TimeSlot.new("9:15 - 9:30 AM", ["Welcome & Introduction"]),
      Schedule::TimeSlot.new("9:30 - 10:30 AM", ["Keynote - Rails 4 and the Future of Web\nAaron Patterson"]),
      Schedule::TimeSlot.new("10:45 - 11:15 AM", ["Ruby: You've Changed, Bro.\nZach Holman","My Server for Aiur: How Starcraft Taught Me To Scale\nRichard Schneeman"]),
      Schedule::TimeSlot.new("11:30 - 12:15 PM", ["Evented Ruby vs Node.js\nJerry Cheung", "Rails Development on Windows. Seriously.\nEvan Machnic"]),
      Schedule::TimeSlot.new("12:30 - 1:45 PM", ["Lunch"]),
      Schedule::TimeSlot.new("2:00 - 2:45 PM", ["How to Crush your Conference Talk\nBen Orenstein", "TBA\nTBA"]),
      Schedule::TimeSlot.new("3:00 - 3:45 PM", ["Why JRuby?\nCharles Nutter", "Message In A Bottle\nKonstantin Haase"]),
      Schedule::TimeSlot.new("4:00 - 4:45 PM", ["Yay! Mocks!\nCorey Haines", "Ensuring High Performance For Your Ruby App\nKowsik Guruswamy"]),
      Schedule::TimeSlot.new("5:00 - 5:45 PM", ["Maintain Less, Mentor More: Community Building Techniques from Open Source\nWesley Beary"]),
      Schedule::TimeSlot.new("5:45 - 6:00 PM", ["Thank you and Information"]),
      Schedule::TimeSlot.new("6:00 - 7:00 PM", ["GitHub Drink Up"])
    ],
    Date.new(2012, 10, 9)  => [
      Schedule::TimeSlot.new("8:00 - 9:00 AM", ["Registration & Breakfast"]),
      Schedule::TimeSlot.new("9:15 - 9:30 AM", ["Welcome & Introduction"]),
      Schedule::TimeSlot.new("9:30 - 10:30 AM", ["This is Not a Rails Shop\nChad Fowler"]),
      Schedule::TimeSlot.new("10:45 - 11:15 AM", ["CoffeeScript for the Rubyist\nMark Bates","Hacking with Gems\nBen Smith"]),
      Schedule::TimeSlot.new("11:30 - 12:15 PM", ["Ten Things You Didn't Know Ruby Could Do\nJames Edward Gray", "Building iOS Apps With RubyMotion\nRay Hightower"]),
      Schedule::TimeSlot.new("12:30 - 1:45 PM", ["Lunch"]),
      Schedule::TimeSlot.new("2:00 - 2:45 PM", ["Building a Ruby Library, the Parts No One Talks About\nMitchell Hashimoto", "Git: The NoSQL Database\nBrandon Keepers"]),
      Schedule::TimeSlot.new("3:00 - 3:45 PM", ["The Designers are Coming!\nGlenn Gillen", "Facing the Monolith: Overcoming Monolithic Applications with SOA\nCharles Max Wood"]),
      Schedule::TimeSlot.new("4:00 - 4:45 PM", ["Running Heroku on Heroku\nNoah Zoschke", "Consultants & Rockstars, Who needs 'em?\nLori Olson"]),
      Schedule::TimeSlot.new("5:00 - 5:45 PM", ["mmm..mruby, or why yet another Ruby implementation.\nMatt Aimonetti"]),
      Schedule::TimeSlot.new("6:00 - 7:00 PM", ["Mahalo"])
    ]
  }

  def self.print_schedule
    printer = Schedule::Printer.new(SCHEDULE_DATA)
    printer.print_schedule
    true
  end
end
