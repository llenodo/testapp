require 'rails_helper'

RSpec.describe "companies/index", :type => :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :tagline => "Tagline",
        :logo_url => "Logo Url",
        :city => "City",
        :state => "State",
        :description => "MyText",
        :url => "Url",
        :jobs_url => "Jobs Url"
      ),
      Company.create!(
        :name => "Name",
        :tagline => "Tagline",
        :logo_url => "Logo Url",
        :city => "City",
        :state => "State",
        :description => "MyText",
        :url => "Url",
        :jobs_url => "Jobs Url"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tagline".to_s, :count => 2
    assert_select "tr>td", :text => "Logo Url".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Jobs Url".to_s, :count => 2
  end
end
