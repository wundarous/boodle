class CreateBoodles < ActiveRecord::Migration
  def change
    create_table :boodles do |t|
      t.string :title
      t.timestamps null: false
      t.references :user, null: false
    end

  end
end
