class AddDefaultValueToDifficulty < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :difficulty, :integer, default: 0
  end
end
