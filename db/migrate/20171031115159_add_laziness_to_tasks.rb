class AddLazinessToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :laziness, :integer
  end
end
