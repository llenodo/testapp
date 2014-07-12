require 'rails_helper'

RSpec.describe "companies/edit", :type => :view do
  before(:each) do
    @company = assign(:company, Company.create!(
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

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

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
