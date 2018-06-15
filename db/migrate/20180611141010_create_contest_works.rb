class CreateContestWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :contest_works do |t|
    	t.references :user, foreign_key: true
    	t.references :contest, foreign_key: true
    	t.string :title
    	t.text :explanation
    	t.text :image
    	t.boolean :hide_flg, default: false
      t.timestamps
    end
  end
end
