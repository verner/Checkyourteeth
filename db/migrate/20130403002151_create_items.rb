class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :text
      t.datetime :due
      t.integer :user_id

      t.timestamps
    end
  end
end
