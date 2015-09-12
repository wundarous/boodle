require 'rails_helper'

RSpec.describe "boodles/show", type: :view do
  before(:each) do
    @boodle = assign(:boodle, Boodle.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
