class CreateHogwartsClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :hogwarts_classes do |t|

      t.timestamps
    end
  end
end
