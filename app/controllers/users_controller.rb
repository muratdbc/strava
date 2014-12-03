require 'httparty'
class UsersController < ApplicationController
  def welcome
     render :welcome
  end
  # def stravacallback
  #   # p params
  #   @code=params["code"];
  #   redirect_to  strava_auth
  # end
  def strava_auth
    @code=params["code"];
     @response_temp=HTTParty.post("https://www.strava.com/oauth/token",:body=>{
    :client_id => ENV['CLIENT_ID'],
    :client_secret => ENV['CLIENT_SECRET'],
    :code=>@code
    }.to_json,
    :headers => {'Content-Type'=>'application/json'})
    p @response_temp
    access_token=@response_temp.parsed_response["access_token"]
    @user=User.find_by_token(access_token)
    if !@user
    # @user=User.find_or_create_by(:token=>access_token)
      @user= User.new
      p @user.token          = @response_temp.parsed_response["access_token"]
      p @user.strava_id      = @response_temp.parsed_response["athlete"]["id"]
      p @user.firstname      = @response_temp.parsed_response["athlete"]["firstname"]
      p @user.lastname       = @response_temp.parsed_response["athlete"]["lastname"]
      p @user.email          = @response_temp.parsed_response["athlete"]["email"]
      p @user.city           = @response_temp.parsed_response["athlete"]["city"]
      p @user.state          = @response_temp.parsed_response["athlete"]["state"]
      p @user.sex            = @response_temp.parsed_response["athlete"]["sex"]
      p @user.profile_img    = @response_temp.parsed_response["athlete"]["profile"]
      @user.save
    end
    session[:current_user_id] = @user.id
    p session[:current_user_id]
    redirect_to action: "show", id:@user.id
  end
  def index
    render :index
  end

  def show

    @user=User.find(params[:id])
    p "here"
    if @user.team
      @team = @user.team
    @all_team_members = @team.users
    @teammates = @team.users.where.not(:id=> @user[:id])

    @team_chats = []
    @all_team_members.each do |person|
      person.team_chats.each do |chat|
        @team_chats << chat
      end
    end
    @team_chats = @team_chats.sort_by { |chat| chat.updated_at }.reverse!
      # @strava_teamates=@user.team.users.where.not(:id=> @user[:id]).all
      # p @strava_teamates
      # p "here"
    end

    render :show
  end
end
