class WelcomeController < ApplicationController
  def index
    # Rails automatically returns the index.html view whenever requests are routed here.
    # This will serve as the welcome page for our webapp. If this feature were to be integrated 
    # into travonde's existing tech stack, this would no longer be needed.
  end

  def volunteer
    # The volunteer.html view will be rendered whenever requests are routed here.
    # This will serve as the main catalogue page for users to view volunteering opportunities.
    # There will be a banner of 5-6 events that will be personalized to the given user. This page
    # will also include information and updates about the causes a user is following and any trending
    # information.
  end

  private
  def get_personalized_events
    # Here, we'll use the 'current_user' variable already defined in the current scope to retrieve a
    # personalized list of 5-6 events for a given user. It'll look something like...
    page = (params[:page].nil? ? 0 : params[:page].to_i) * 5
    if not current_user.nil?
      events = Event.all.sort{|event| current_user.rate(event)}[page, page + 5]
    else
      Event.all.to_a[page, page + 5]
    end
  end
end
