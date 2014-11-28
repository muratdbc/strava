class Team < ActiveRecord::Base
  has_many :users
  has_many :games
  has_many :awayteams, :through => :games
end
