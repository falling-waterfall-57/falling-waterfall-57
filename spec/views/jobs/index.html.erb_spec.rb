require 'spec_helper'

describe "jobs/index.html.erb" do
  before(:each) do
    assign(:jobs, [
      stub_model(Job,
        :title => "Title",
        :description => "Description",
        :details => "MyText"
      ),
      stub_model(Job,
        :title => "Title",
        :description => "Description",
        :details => "MyText"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Description".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
