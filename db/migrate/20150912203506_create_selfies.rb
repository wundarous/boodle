class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
      t.datetime :last_period
      t.references :user
      t.timestamps null: false
    end
  end
end
