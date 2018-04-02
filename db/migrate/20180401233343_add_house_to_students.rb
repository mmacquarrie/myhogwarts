class AddHouseToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :house, :string
  end
end
