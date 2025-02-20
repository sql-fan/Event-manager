class EventsController < ApplicationController
  before_action :set_event, only: %i[ show ]
  def index
    @events = Event.all
  end

  def show
    @attendees = @event.attendees.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.build_creator(id: current_user.id)
    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.expect(event: [ :name, :date ])
    end
end
