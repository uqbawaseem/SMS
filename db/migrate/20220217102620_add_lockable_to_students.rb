class AddLockableToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :failed_attempts, :integer, default: 0, null: false
    add_column :students, :unlock_token, :string
    
    add_column :students, :locked_at, :datetime
    add_index :students, :unlock_token, unique: true
  end
end
