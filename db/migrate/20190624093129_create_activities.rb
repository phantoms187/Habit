class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.references :user, foreign_key: true
      t.boolean :climb
      t.boolean :duolingo
      t.integer :teeth
      t.integer :mia
      t.integer :run
      t.integer :keyboard
      t.integer :pull
      t.integer :floor
      t.integer :bell

      t.timestamps
    end
    add_index :activities, [:user_id, :created_at]
  end
end
