require 'faker'

Team.create(:name => "test team 1", :description => "team 1 description", :location => "team 1 location", :total_wins => 3, :total_losses => 5)
Team.create(:name => "test team 2", :description => "team 2 description", :location => "team 2 location", :total_wins => 3, :total_losses => 5)
Team.create(:name => "test team 3", :description => "team 3 description", :location => "team 3 location", :total_wins => 3, :total_losses => 5)
Team.create(:name => "test team 4", :description => "team 4 description", :location => "team 4 location", :total_wins => 3, :total_losses => 5)

# GameInvite.create(:team_id => 1, :invite_from_id => 2)
# GameInvite.create(:team_id => 3, :invite_from_id => 4)

Game.create(:name => "first test game", :description => "first game description", :team_id => 1, :awayteam_id => 2)
Game.create(:name => "second test game", :description => "second game description", :team_id => 3, :awayteam_id => 4)

4.times do
  User.create(:strava_name => Faker::Lorem.word, :firstname => Faker::Name.first_name, :lastname => Faker::Name.last_name, :email => Faker::Internet.email, :city => Faker::Address.city, :state => Faker::Address.state, :sex => "M",
    :profile_img => Faker::Avatar.image, :token => '61991c295e6ee0223e8ac779c80bd9edf980571a', :strava_id => Faker::Number.number(4), :team_id => 1)
end

4.times do
  User.create(:strava_name => Faker::Lorem.word, :firstname => Faker::Name.first_name, :lastname => Faker::Name.last_name, :email => Faker::Internet.email, :city => Faker::Address.city, :state => Faker::Address.state, :sex => "M",
    :profile_img => Faker::Avatar.image, :token => '50f365eddf514cc68c02daf2e8bac40aff13f1a7', :strava_id => Faker::Number.number(4), :team_id => 2)
end
4.times do
  User.create(:strava_name => Faker::Lorem.word, :firstname => Faker::Name.first_name, :lastname => Faker::Name.last_name, :email => Faker::Internet.email, :city => Faker::Address.city, :state => Faker::Address.state, :sex => "M",
    :profile_img => Faker::Avatar.image, :token => '255dfb79ccae694aa17c9b1007526cbcef0b73c1', :strava_id => Faker::Number.number(4), :team_id => 3)
end
4.times do
  User.create(:strava_name => Faker::Lorem.word, :firstname => Faker::Name.first_name, :lastname => Faker::Name.last_name, :email => Faker::Internet.email, :city => Faker::Address.city, :state => Faker::Address.state, :sex => "M",
    :profile_img => Faker::Avatar.image, :token => 'fd32c62d76dd12eadfb4d2a17cf19c2598e2318a', :strava_id => Faker::Number.number(4), :team_id => 4)
end

50.times do
  Activity.create(:user_id => User.all.sample.id, :map_polyline => "https://maps.googleapis.com/maps/api/staticmap?size=400x400&sensor=false&key=#{ENV['GOOGLEAPI']}", :distance => Random.rand(200), :date_of_activity => Faker::Date.forward(7))
end

30.times do
  TeamChat.create(:content => Faker::Lorem.sentence, :user_id => User.all.sample.id)
end

30.times do
  TrashTalk.create(:game_id => Game.all.sample.id, :user_id => User.all.sample.id, :content => Faker::Lorem.sentence)
end






