class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.text :first_name
      t.text :last_name
      t.text :house

      t.timestamps
    end
  end
end
