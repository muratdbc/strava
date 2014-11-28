class Game < ActiveRecord::Base
  belongs_to :team
  belongs_to :awayteam, :class_name => "Team"
end
