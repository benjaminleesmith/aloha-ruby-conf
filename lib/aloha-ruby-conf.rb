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
      :separator,
      ["9:15 - 9:30 AM", {:value => "Welcome & Introduction", :colspan => 2}],
      :separator,
      ["9:30 - 10:30 AM", {:value => "Keynote - Rails 4 and the Future of Web\nAaron Patterson", :colspan => 2}],
      :separator,
      ["10:45 - 11:15 AM", "Ruby: You've Changed, Bro.\nZach Holman","My Server for Aiur: How Starcraft Taught Me To Scale\nRichard Schneeman"],
      :separator,
      ["11:30 - 12:15 PM", "Evented Ruby vs Node.js\nJerry Cheung", "Rails Development on Windows. Seriously.\nEvan Machnic"],
      :separator,
      ["12:30 - 1:45 PM", {:value => "Lunch", :colspan => 2}],
      :separator,
      ["2:00 - 2:45 PM", "How to Crush your Conference Talk\nBen Orenstein", "TBA\nTBA"],
      :separator,
      ["3:00 - 3:45 PM", "Why JRuby?\nCharles Nutter", "Message In A Bottle\nKonstantin Haase"],
      :separator,
      ["4:00 - 4:45 PM", "Yay! Mocks!\nCorey Haines", "Ensuring High Performance For Your Ruby App\nKowsik Guruswamy"],
      :separator,
      ["5:00 - 5:45 PM", {:value => "Maintain Less, Mentor More: Community Building Techniques from Open Source\nWesley Beary", :colspan => 2}],
      :separator,
      ["5:45 - 6:00 PM", {:value => "Thank you and Information", :colspan => 2}],
      :separator,
      ["6:00 - 7:00 PM", {:value => "GitHub Drink Up", :colspan => 2}]
    ],
    Date.new(2012, 10, 9)  => [
      ["8:00 - 9:00 AM", {:value => "Registration & Breakfast", :colspan => 2}],
      :separator,
      ["9:15 - 9:30 AM", {:value => "Welcome & Introduction", :colspan => 2}],
      :separator,
      ["9:30 - 10:30 AM", {:value => "This is Not a Rails Shop\nChad Fowler", :colspan => 2}],
      :separator,
      ["10:45 - 11:15 AM", "CoffeeScript for the Rubyist\nMark Bates","Hacking with Gems\nBen Smith"],
      :separator,
      ["11:30 - 12:15 PM", "Ten Things You Didn't Know Ruby Could Do\nJames Edward Gray", "Building iOS Apps With RubyMotion\nRay Hightower"],
      :separator,
      ["12:30 - 1:45 PM", {:value => "Lunch", :colspan => 2}],
      :separator,
      ["2:00 - 2:45 PM", "Building a Ruby Library, the Parts No One Talks About\nMitchell Hashimoto", "Git: The NoSQL Database\nBrandon Keepers"],
      :separator,
      ["3:00 - 3:45 PM", "The Designers are Coming!\nGlenn Gillen", "Facing the Monolith: Overcoming Monolithic Applications with SOA\nCharles Max Wood"],
      :separator,
      ["4:00 - 4:45 PM", "Running Heroku on Heroku\nNoah Zoschke", "Consultants & Rockstars, Who needs 'em?\nLori Olson"],
      :separator,
      ["5:00 - 5:45 PM", {:value => "mmm..mruby, or why yet another Ruby implementation.\nMatt Aimonetti", :colspan => 2}],
      :separator,
      ["6:00 - 7:00 PM", {:value => "Mahalo", :colspan => 2}]
    ]
  }

  def self.print_schedule
    printer = Schedule::Printer.new(SCHEDULE_DATA)
    printer.print_schedule
    true
  end
end
