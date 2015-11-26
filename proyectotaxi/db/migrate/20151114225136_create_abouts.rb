class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :titulo
      t.text :description

      t.timestamps null: false
    end
  end
end
