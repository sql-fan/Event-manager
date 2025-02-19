class EventUsersController < ApplicationController
  before_action :authenticate_user!

  def new
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
    @event_user = EventUser.find_or_create_by(user: current_user, event: @event)

    if @event_user.save
      redirect_to @event, notice: "You have succesfully joined #{@event.name}"
    else
      flash[:alert] = "Could not join the event"
      redirct_to :new, status: :unprocessable_entity
    end
  end
end
