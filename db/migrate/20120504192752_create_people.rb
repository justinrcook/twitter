class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.references :user
      t.string :username
      t.string :name
      t.string :avatar
      t.datetime :last_checked

      t.timestamps
    end
    add_index :people, :user_id
  end
end
