require 'rails_helper'

RSpec.describe "advents/show", :type => :view do
  before(:each) do
    @advent = assign(:advent, Advent.create!(
      :title => "Title",
      :description => "MyText",
      :picture => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
