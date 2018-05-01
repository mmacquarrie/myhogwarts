class AddReferencesToClass < ActiveRecord::Migration[5.1]
  def change
    add_column :hogwarts_classes, :course_id, :integer
    add_foreign_key :hogwarts_classes, :courses, column: :course_id, primary_key: "course_id"
    add_column :hogwarts_classes, :professor_id, :integer
    add_foreign_key :hogwarts_classes, :professors, column: :professor_id, primary_key: "professor_id"
  end
end
