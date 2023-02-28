require 'pry'
require 'rspec'
require './lib/attendee'
require './lib/event_manager'

describe Attendee do
  it 'can make attendees' do
  em1 = EventManager.new
  em1.create_attendees

  expect(em1.attendees[0].name).to eq('Allison Nguyen')
  end

end