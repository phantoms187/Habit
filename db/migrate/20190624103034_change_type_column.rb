class ChangeTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :activities, :type, :keyboard
  end
end
