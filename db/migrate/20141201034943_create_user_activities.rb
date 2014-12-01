class CreateUserActivities < ActiveRecord::Migration
  def change
    create_table 	  :user_activities do |t|
    	t.references  :user
    	t.string   	  :map_id
    	t.string      :map_polyline
    	t.string   	  :map_smmary_polyline
    	t.integer  	  :moving_time
		t.integer  	  :elapsed_time
		t.integer  	  :distance
      	t.integer  	  :team_id
      	t.integer  	  :average_temp
      	t.integer  	  :max_speed

      	t.timestamps
    end
  end
end
