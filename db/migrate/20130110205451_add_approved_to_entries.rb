class AddApprovedToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :approved, :boolean, :default => false
  end
end
