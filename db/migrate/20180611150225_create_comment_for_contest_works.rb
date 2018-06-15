class CreateCommentForContestWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_for_contest_works do |t|
    	t.references :user ,foreign_key: true
    	t.references :contest_work ,foreign_key: true
    	t.text :body ,null: false
      t.timestamps
    end
  end
end
