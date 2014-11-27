require 'rails_helper'

RSpec.describe "advents/new", :type => :view do
  before(:each) do
    assign(:advent, Advent.new(
      :title => "MyString",
      :description => "MyText",
      :picture => "MyText"
    ))
  end

  it "renders new advent form" do
    render

    assert_select "form[action=?][method=?]", advents_path, "post" do

      assert_select "input#advent_title[name=?]", "advent[title]"

      assert_select "textarea#advent_description[name=?]", "advent[description]"

      assert_select "textarea#advent_picture[name=?]", "advent[picture]"
    end
  end
end
