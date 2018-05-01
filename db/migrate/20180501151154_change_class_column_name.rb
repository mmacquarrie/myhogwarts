class ChangeClassColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :registrations, :course_id, :hogwarts_class_id
  end
end
