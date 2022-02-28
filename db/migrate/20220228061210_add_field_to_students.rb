class AddFieldToStudents < ActiveRecord::Migration[7.0]
  def change
    
      add_column :students, :role, :integer, default: 1

  end
end
