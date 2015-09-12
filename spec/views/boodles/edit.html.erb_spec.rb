require 'rails_helper'

RSpec.describe "boodles/edit", type: :view do
  before(:each) do
    @boodle = assign(:boodle, Boodle.create!())
  end

  it "renders the edit boodle form" do
    render

    assert_select "form[action=?][method=?]", boodle_path(@boodle), "post" do
    end
  end
end
