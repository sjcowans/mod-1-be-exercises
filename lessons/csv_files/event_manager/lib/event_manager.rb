require "csv"

class EventManager

attr_reader :attendees

  def initialize
    @attendees = []
  end

  def create_attendees
  contents = CSV.open 'data/event_attendees.csv', headers: true, header_converters: :symbol
  contents.each do |row|
    id = row[:id]
    first = row[:first_name]
    last = row[:last_name]
    zipcode = row[:zipcode]
    @attendees << Attendee.new(id, first, last, zipcode)
  end
  end
end





