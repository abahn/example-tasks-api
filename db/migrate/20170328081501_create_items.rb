class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :description
      t.boolean :completed
      t.date :due_to

      t.timestamps
    end
  end
end
