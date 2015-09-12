class AddDataLinkToBoodle < ActiveRecord::Migration
  def change
    add_column :boodles, :data_url, :string
  end
end
