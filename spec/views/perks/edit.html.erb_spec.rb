require 'rails_helper'

RSpec.describe "perks/edit", :type => :view do
  before(:each) do
    @perk = assign(:perk, Perk.create!(
      :title => "MyString",
      :icon => "MyString",
      :company => nil
    ))
  end

  it "renders the edit perk form" do
    render

    assert_select "form[action=?][method=?]", perk_path(@perk), "post" do

      assert_select "input#perk_title[name=?]", "perk[title]"

      assert_select "input#perk_icon[name=?]", "perk[icon]"

      assert_select "input#perk_company_id[name=?]", "perk[company_id]"
    end
  end
end
