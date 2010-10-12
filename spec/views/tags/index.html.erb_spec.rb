require 'spec_helper'

describe "tags/index.html.erb" do
  before(:each) do
    assign(:tags, [
      stub_model(Tag,
        :user_id => 1,
        :tag_name => "Tag Name",
        :tag_type => "Tag Type"
      ),
      stub_model(Tag,
        :user_id => 1,
        :tag_name => "Tag Name",
        :tag_type => "Tag Type"
      )
    ])
  end

  it "renders a list of tags" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Tag Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Tag Type".to_s, :count => 2)
  end
end
