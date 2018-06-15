class CreateWorkItems < ActiveRecord::Migration[5.2]
  def change
    create_table :work_items do |t|
    	t.references :work ,foreign_key: true
    	t.text :image
    	t.text :body
      t.timestamps
    end
  end
end
