class CreateRegisteredCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :registered_courses do |t|
      t.string :grade
      t.references :student, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
