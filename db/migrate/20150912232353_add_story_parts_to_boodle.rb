class AddStoryPartsToBoodle < ActiveRecord::Migration
  def change
    add_column :boodles, :note, :string
    add_column :boodles, :description, :string
  end
end
