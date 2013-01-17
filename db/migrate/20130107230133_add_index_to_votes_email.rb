class AddIndexToVotesEmail < ActiveRecord::Migration
  def change
    add_index :votes, :email, unique: true
  end
end
