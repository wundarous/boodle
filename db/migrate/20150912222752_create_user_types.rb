class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :emoji
      t.string :name

      t.timestamps null: false
    end

  end
end
