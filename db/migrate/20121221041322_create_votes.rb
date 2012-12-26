class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :name
      t.string :email
      t.integer :entry_id

      t.timestamps
    end
  end
end
