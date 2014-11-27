class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
