require 'rails_helper'

RSpec.describe Boodle, type: :model do

 describe ".title" do
   context "title is set" do
     it {expect(Boodle.new(title: "a new boodle").title).to eq "a new boodle"}
   end
 end

  describe ".user" do
    context "user is set" do
      it "sets the user" do
        user = User.create!(email: "someemail@me.com")
        boodle = Boodle.create(user_id: user.id, title: "my boobs are great")

        boodle.user.should eq(user)
        boodle.title.should eq("my boobs are great")
      end

    end
  end
end
