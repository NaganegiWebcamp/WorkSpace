class CreateContests < ActiveRecord::Migration[5.2]
  def change
    create_table :contests do |t|
    	t.string :name
    	t.text :explanation
    	t.boolean :status, default:true
      t.timestamps
    end
  end
end
