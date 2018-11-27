class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :name
      t.text :description
      t.string :author

      t.timestamps
    end
  end
end
