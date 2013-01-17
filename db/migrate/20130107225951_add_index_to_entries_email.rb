class AddIndexToEntriesEmail < ActiveRecord::Migration
  def change
    add_index :entries, :email, unique: true
  end
end
