class CreatePreviousCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :previous_courses do |t|
      t.integer :course_id
      t.integer :student_id

      t.timestamps
    end
  end
end
