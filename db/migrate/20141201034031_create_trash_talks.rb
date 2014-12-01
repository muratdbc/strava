class CreateTrashTalks < ActiveRecord::Migration
  def change
    create_table     :trash_talks do |t|
    	t.references :game
    	t.integer    :to_id
	    t.integer    :from_id
	    t.string     :message
		t.integer    :game_id

	    t.timestamps

    end
  end
end
