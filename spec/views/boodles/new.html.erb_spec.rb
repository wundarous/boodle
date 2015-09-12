require 'rails_helper'

RSpec.describe "boodles/new", type: :view do
  before(:each) do
    assign(:boodle, Boodle.new())
  end

  it "renders new boodle form" do
    render

    assert_select "form[action=?][method=?]", boodles_path, "post" do
    end
  end
end
