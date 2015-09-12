class AddDataLinkToBoodle < ActiveRecord::Migration
  def change
    add_column :boodles, :data_url, :text
  end
end
