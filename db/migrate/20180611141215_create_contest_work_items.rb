class CreateContestWorkItems < ActiveRecord::Migration[5.2]
  def change
    create_table :contest_work_items do |t|
    	t.references :contest_work ,foreign_key: true
    	t.text :image
    	t.text :body
      t.timestamps
    end
  end
end
