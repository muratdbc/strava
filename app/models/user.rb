class User < ActiveRecord::Base
  belongs_to :team
  has_many	 :team_chats
  has_many 	 :user_activities
  has_many   :trash_talks
end
