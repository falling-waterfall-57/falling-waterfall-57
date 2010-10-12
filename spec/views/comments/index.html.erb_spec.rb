require 'spec_helper'

describe "comments/index.html.erb" do
  before(:each) do
    assign(:comments, [
      stub_model(Comment,
        :media_id => 1,
        :comments => "Comments",
        :from => "From",
        :email => "Email"
      ),
      stub_model(Comment,
        :media_id => 1,
        :comments => "Comments",
        :from => "From",
        :email => "Email"
      )
    ])
  end

  it "renders a list of comments" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Comments".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "From".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Email".to_s, :count => 2)
  end
end
