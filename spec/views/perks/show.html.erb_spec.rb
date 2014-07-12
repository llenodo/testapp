require 'rails_helper'

RSpec.describe "perks/show", :type => :view do
  before(:each) do
    @perk = assign(:perk, Perk.create!(
      :title => "Title",
      :icon => "Icon",
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(//)
  end
end
