require 'rails_helper'

RSpec.describe "boodles/index", type: :view do
  before(:each) do
    assign(:boodles, [
      Boodle.create!(),
      Boodle.create!()
    ])
  end

  it "renders a list of boodles" do
    render
  end
end
