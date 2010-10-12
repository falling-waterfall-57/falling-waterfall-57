require 'spec_helper'

describe "tags/new.html.erb" do
  before(:each) do
    assign(:tag, stub_model(Tag,
      :new_record? => true,
      :user_id => 1,
      :tag_name => "MyString",
      :tag_type => "MyString"
    ))
  end

  it "renders new tag form" do
    render

    rendered.should have_selector("form", :action => tags_path, :method => "post") do |form|
      form.should have_selector("input#tag_user_id", :name => "tag[user_id]")
      form.should have_selector("input#tag_tag_name", :name => "tag[tag_name]")
      form.should have_selector("input#tag_tag_type", :name => "tag[tag_type]")
    end
  end
end
