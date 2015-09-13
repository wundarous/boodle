class AddUserTypeToUser < ActiveRecord::Migration
  def change
    add_reference :users, :user_type
  end
end
