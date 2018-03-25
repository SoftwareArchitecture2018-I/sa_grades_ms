class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :course_id
      t.float :grade_value

      t.timestamps
    end
  end
end
