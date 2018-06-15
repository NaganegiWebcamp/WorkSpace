class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
    	t.references :user, foreign_key: true
    	t.references :work_genre, foreign_key: true
    	t.string :title
    	t.text :explanation
    	t.text :image
    	t.boolean :album_allow_flg ,default: true
    	t.boolean :hide_flg, default: false
      t.timestamps
    end
  end
end
