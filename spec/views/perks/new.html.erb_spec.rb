require 'rails_helper'

RSpec.describe "perks/new", :type => :view do
  before(:each) do
    assign(:perk, Perk.new(
      :title => "MyString",
      :icon => "MyString",
      :company => nil
    ))
  end

  it "renders new perk form" do
    render

    assert_select "form[action=?][method=?]", perks_path, "post" do

      assert_select "input#perk_title[name=?]", "perk[title]"

      assert_select "input#perk_icon[name=?]", "perk[icon]"

      assert_select "input#perk_company_id[name=?]", "perk[company_id]"
    end
  end
end
