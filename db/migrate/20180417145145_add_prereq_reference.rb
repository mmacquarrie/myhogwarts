class AddPrereqReference < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :parent_course, :reference
  end
end
