class UsersController < ApplicationController
  def index
    render :index
  end

  def show
    @user=User.find(params[:id])
    @strava_teamates=@user.team.users.where.not(:id=> @user[:id]).all
    # render json: @strava_teamates,location: user_path(@user)
  end
end
