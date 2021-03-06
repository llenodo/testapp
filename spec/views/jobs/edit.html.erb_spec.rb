require 'rails_helper'

RSpec.describe "jobs/edit", :type => :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :company => nil,
      :title => "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_company_id[name=?]", "job[company_id]"

      assert_select "input#job_title[name=?]", "job[title]"
    end
  end
end
