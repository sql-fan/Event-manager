class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events_created.all
  end
end
