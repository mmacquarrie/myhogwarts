class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.text :course_name
      t.integer :section

      t.timestamps
    end
  end
end
