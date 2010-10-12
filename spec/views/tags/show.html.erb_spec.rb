require 'spec_helper'

describe "tags/show.html.erb" do
  before(:each) do
    @tag = assign(:tag, stub_model(Tag,
      :user_id => 1,
      :tag_name => "Tag Name",
      :tag_type => "Tag Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain("Tag Name".to_s)
    rendered.should contain("Tag Type".to_s)
  end
end
