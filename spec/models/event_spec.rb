require 'spec_helper'

describe Event do
  it 'should have remaining ticket figure' do
    @event = Event.create :name => 'k'
    @tier = @event.tiers.create :quantity => 10
    @tier2 = @event.tiers.create :quantity => 100
    @event.available_ticket_count.should == 110
  end
end
