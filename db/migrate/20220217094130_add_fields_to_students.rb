class AddFieldsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :name, :string
    add_column :students, :roll_no, :integer
    add_column :students, :role, :boolean, default: true
  end
end
