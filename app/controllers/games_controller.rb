class GamesController < ApplicationController

  def show

    @placeholder = 'placeholder'
    @arr =["one","two","three","four"]

    @current_user_id = 1

    @user = User.find(@current_user_id)
    @team = @user.team_id

    @game = Game.where(:team_id => @team).first || Game.where(:awayteam_id => @team).first

    @home_team = Team.find(@game.team_id)
    @away_team = Team.find(@game.awayteam_id)

    p @home_team.users
    p @away_team.users

    render :index
  end




end
