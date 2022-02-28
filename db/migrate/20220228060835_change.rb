class Change < ActiveRecord::Migration[7.0]
  def up
    remove_column :students, :role
  end
end
