class CreateReportWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :report_works do |t|
    	t.references :work ,foreign_key: true
    	t.references :user ,foreign_key: true
    	t.text :reason
    	t.boolean :hide_flg ,default: false
      t.timestamps
    end
  end
end
