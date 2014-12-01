class CreateTrashTalks < ActiveRecord::Migration
  def change
    create_table     :trash_talks do |t|
    	t.references :game
	    t.integer    :user_id
	    t.string     :content

	    t.timestamps

    end
  end
end
