require 'rails_helper'

RSpec.describe "advents/edit", :type => :view do
  before(:each) do
    @advent = assign(:advent, Advent.create!(
      :title => "MyString",
      :description => "MyText",
      :picture => "MyText"
    ))
  end

  it "renders the edit advent form" do
    render

    assert_select "form[action=?][method=?]", advent_path(@advent), "post" do

      assert_select "input#advent_title[name=?]", "advent[title]"

      assert_select "textarea#advent_description[name=?]", "advent[description]"

      assert_select "textarea#advent_picture[name=?]", "advent[picture]"
    end
  end
end
