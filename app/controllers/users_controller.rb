class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events_created.all
    @events_joined = @user.attended_events.all
  end
end
