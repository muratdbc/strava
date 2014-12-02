class CreateActivities < ActiveRecord::Migration
  def change
    create_table 	  :activities do |t|
    	t.integer     :user_id
    	t.string      :map_polyline
      t.integer  	  :distance
      t.date        :date_of_activity

      t.timestamps
    end
  end
end