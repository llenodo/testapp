require 'rails_helper'

RSpec.describe "companies/show", :type => :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Name",
      :tagline => "Tagline",
      :logo_url => "Logo Url",
      :city => "City",
      :state => "State",
      :description => "MyText",
      :url => "Url",
      :jobs_url => "Jobs Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Tagline/)
    expect(rendered).to match(/Logo Url/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Jobs Url/)
  end
end
