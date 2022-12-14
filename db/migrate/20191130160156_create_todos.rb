class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.boolean :done, default: false
      t.string :description
      t.timestamp :date

      t.timestamps
    end
  end
end
