class AddChildrenToUser < ActiveRecord::Migration
  def change
    add_column :users, :children, :integer
  end
end
