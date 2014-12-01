class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.decimal :rating, precision: 8, scale: 2
      t.integer  :user_id
      t.integer  :beer_id

      t.timestamps
    end
  end
end
