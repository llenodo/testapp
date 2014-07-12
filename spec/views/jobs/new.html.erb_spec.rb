require 'rails_helper'

RSpec.describe "jobs/new", :type => :view do
  before(:each) do
    assign(:job, Job.new(
      :company => nil,
      :title => "MyString"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_company_id[name=?]", "job[company_id]"

      assert_select "input#job_title[name=?]", "job[title]"
    end
  end
end
