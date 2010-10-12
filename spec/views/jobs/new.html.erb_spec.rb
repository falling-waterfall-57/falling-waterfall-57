require 'spec_helper'

describe "jobs/new.html.erb" do
  before(:each) do
    assign(:job, stub_model(Job,
      :new_record? => true,
      :title => "MyString",
      :description => "MyString",
      :details => "MyText"
    ))
  end

  it "renders new job form" do
    render

    rendered.should have_selector("form", :action => jobs_path, :method => "post") do |form|
      form.should have_selector("input#job_title", :name => "job[title]")
      form.should have_selector("input#job_description", :name => "job[description]")
      form.should have_selector("textarea#job_details", :name => "job[details]")
    end
  end
end
