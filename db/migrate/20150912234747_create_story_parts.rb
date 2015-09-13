class CreateStoryParts < ActiveRecord::Migration
  def change
    create_table :story_parts do |t|
      t.string :category
      t.string :description
      t.timestamps null: false
    end
  end
end
