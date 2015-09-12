require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "user" do
    it "can save" do
      User.create_with_password("me@me.com")
    end
  end

end
