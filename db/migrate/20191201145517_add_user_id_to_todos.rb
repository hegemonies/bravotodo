class AddUserIdToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :user_id, :integer
    change_column :todos, :done, :boolean, default_insert_value: false
  end
end
