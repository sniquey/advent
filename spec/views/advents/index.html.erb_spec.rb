require 'rails_helper'

RSpec.describe "advents/index", :type => :view do
  before(:each) do
    assign(:advents, [
      Advent.create!(
        :title => "Title",
        :description => "MyText",
        :picture => "MyText"
      ),
      Advent.create!(
        :title => "Title",
        :description => "MyText",
        :picture => "MyText"
      )
    ])
  end

  it "renders a list of advents" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
