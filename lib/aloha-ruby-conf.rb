require "terminal-table"
require "schedule/printer"
require "date"

#class AlohaRubyConf
#  MONDAY = [
#    ["8:00 - 9:00 AM", {:value => "Registration & Breakfast", :colspan => 2}],
#    ["9:15 - 9:30 AM", {:value => "Welcome & Introduction", :colspan => 2}],
#    ["10:45 - 11:45 AM", {:value => "Keynote - Rails 4 and the Future of Web (Aaron Patterson)", :colspan => 2}]
#  ]
#
#  def self.print_schedule
#    printer = AlohaRubyConf::Printer.new(AlohaRubyConf::Schedule.new)
#    printer.print_schedule
#    true
#
#
#    table =  Terminal::Table.new :headings => ["Time", "Track 1", "Track 2"], :rows => MONDAY
#
#    p table
#
#    true
#  end
#end

class AlohaRubyConf
  SCHEDULE_DATA = {
    Date.new(2012, 10, 8) => [
      ["8:00 - 9:00 AM", {:value => "Registration & Breakfast", :colspan => 2}],
      ["9:15 - 9:30 AM", {:value => "Welcome & Introduction", :colspan => 2}],
      ["9:30 - 10:30 AM", {:value => "Keynote - Rails 4 and the Future of Web (Aaron Patterson)", :colspan => 2}],
      :separator,
      ["10:45 - 11:15 AM", "Ruby: You've Changed, Bro. (Zach Holman)","My Server for Aiur: How Starcraft Taught Me To Scale (Richard Schneeman)"],
      ["11:30 - 12:15 PM", "Evented Ruby vs Node.js (Jerry Cheung)", "Rails Development on Windows. Seriously. (Evan Machnic)"],
      :separator,
      ["12:30 - 1:45 PM", {:value => "Lunch", :colspan => 2}],
      :separator,
      ["2:00 - 2:45 PM", "How to Crush your Conference Talk (Ben Orenstein)", "TBA (TBA)"],
      ["3:00 - 3:45 PM", "Why JRuby? (Charles Nutter)", "Message In A Bottle (Konstantin Haase)"],
      ["4:00 - 4:45 PM", "Yay! Mocks! (Corey Haines)", "Ensuring High Performance For Your Ruby App (Kowsik Guruswamy)"],
      :separator,
      ["5:00 - 5:45 PM", {:value => "Maintain Less, Mentor More: Community Building Techniques from Open Source (Wesley Beary)", :colspan => 2}],
      ["5:45 - 6:00 PM", {:value => "Thank you and Information", :colspan => 2}],
      ["6:00 - 7:00 PM", {:value => "GitHub Drink Up", :colspan => 2}]
    ],
    Date.new(2012, 10, 9)  => [
      ["8:00 - 9:00 AM", {:value => "Registration & Breakfast", :colspan => 2}],
      ["9:15 - 9:30 AM", {:value => "Welcome & Introduction", :colspan => 2}],
      ["9:30 - 10:30 AM", {:value => "This is Not a Rails Shop (Chad Fowler)", :colspan => 2}],
      :separator,
      ["10:45 - 11:15 AM", "CoffeeScript for the Rubyist (Mark Bates)","Hacking with Gems (Ben Smith)"],
      ["11:30 - 12:15 PM", "Ten Things You Didn't Know Ruby Could Do (James Edward Gray)", "Building iOS Apps With RubyMotion (Ray Hightower)"],
      :separator,
      ["12:30 - 1:45 PM", {:value => "Lunch", :colspan => 2}],
      :separator,
      ["2:00 - 2:45 PM", "Building a Ruby Library, the Parts No One Talks About (Mitchell Hashimoto)", "Git: The NoSQL Database (Brandon Keepers)"],
      ["3:00 - 3:45 PM", "The Designers are Coming! (Glenn Gillen)", "Facing the Monolith: Overcoming Monolithic Applications with SOA (Charles Max Wood)"],
      ["4:00 - 4:45 PM", "Running Heroku on Heroku (Noah Zoschke)", "Consultants & Rockstars, Who needs 'em? (Lori Olson)"],
      :separator,
      ["5:00 - 5:45 PM", {:value => "mmm..mruby, or why yet another Ruby implementation. (Matt Aimonetti)", :colspan => 2}],
      ["6:00 - 7:00 PM", {:value => "Mahalo", :colspan => 2}]
    ]
  }

  def self.print_schedule
    printer = Schedule::Printer.new(SCHEDULE_DATA)
    printer.print_schedule
    true
  end
end
