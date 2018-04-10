class AddSubjectToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :subject, :string
  end
end
