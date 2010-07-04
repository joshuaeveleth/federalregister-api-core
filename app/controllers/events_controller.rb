class EventsController < ApplicationController
  include Icalendar
  def show
    @event = ::Event.find(params[:id])
    
    respond_to do |wants|
      wants.html do
        
      end
      wants.ics do
        cal = Calendar.new
        cal.add_event(@event.to_ics)
        render :text => cal.to_ical
      end
    end
  end
end