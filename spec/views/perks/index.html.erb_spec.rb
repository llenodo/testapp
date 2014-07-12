require 'rails_helper'

RSpec.describe "perks/index", :type => :view do
  before(:each) do
    assign(:perks, [
      Perk.create!(
        :title => "Title",
        :icon => "Icon",
        :company => nil
      ),
      Perk.create!(
        :title => "Title",
        :icon => "Icon",
        :company => nil
      )
    ])
  end

  it "renders a list of perks" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
