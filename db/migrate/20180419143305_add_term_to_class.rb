class AddTermToClass < ActiveRecord::Migration[5.1]
  def change
    add_column :hogwarts_classes, :section, :integer
    add_column :hogwarts_classes, :term, :string
  end
end
