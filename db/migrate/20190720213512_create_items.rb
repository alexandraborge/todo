class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :category
      t.integer :priority
      t.integer :day
      t.integer :list

      t.timestamps
    end
  end
end
