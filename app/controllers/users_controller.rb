class UsersController < ApplicationController
  def index
    render :index
  end

  def show
    current_user = 1
    @user = User.find(current_user)
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

    render :show
  end
end
