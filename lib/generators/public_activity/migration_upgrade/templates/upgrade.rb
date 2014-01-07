# Migration responsible for creating a table with activities
class UpgradeActivities < ActiveRecord::Migration
  # Create table
  def self.change
    change_table :<%= PublicActivity.config.table_name %> do |t|
      t.belongs_to :recipient, :polymorphic => true
    end
  end
end
