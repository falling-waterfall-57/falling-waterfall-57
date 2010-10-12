require 'spec_helper'

describe "tags/edit.html.erb" do
  before(:each) do
    @tag = assign(:tag, stub_model(Tag,
      :new_record? => false,
      :user_id => 1,
      :tag_name => "MyString",
      :tag_type => "MyString"
    ))
  end

  it "renders the edit tag form" do
    render

    rendered.should have_selector("form", :action => tag_path(@tag), :method => "post") do |form|
      form.should have_selector("input#tag_user_id", :name => "tag[user_id]")
      form.should have_selector("input#tag_tag_name", :name => "tag[tag_name]")
      form.should have_selector("input#tag_tag_type", :name => "tag[tag_type]")
    end
  end
end
