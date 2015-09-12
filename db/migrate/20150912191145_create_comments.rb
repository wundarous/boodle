class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :message, null: false
      t.references :boodle, null: false
      t.timestamps null: false
    end
  end
end
