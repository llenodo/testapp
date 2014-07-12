require 'rails_helper'

RSpec.describe "companies/new", :type => :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :tagline => "MyString",
      :logo_url => "MyString",
      :city => "MyString",
      :state => "MyString",
      :description => "MyText",
      :url => "MyString",
      :jobs_url => "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_tagline[name=?]", "company[tagline]"

      assert_select "input#company_logo_url[name=?]", "company[logo_url]"

      assert_select "input#company_city[name=?]", "company[city]"

      assert_select "input#company_state[name=?]", "company[state]"

      assert_select "textarea#company_description[name=?]", "company[description]"

      assert_select "input#company_url[name=?]", "company[url]"

      assert_select "input#company_jobs_url[name=?]", "company[jobs_url]"
    end
  end
end
