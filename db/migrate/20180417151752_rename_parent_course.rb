class RenameParentCourse < ActiveRecord::Migration[5.1]
  def change
    rename_column :courses, :parent_course, :parent_course_id
  end
end
