require 'spec_helper'

describe "comments/new.html.erb" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :new_record? => true,
      :media_id => 1,
      :comments => "MyString",
      :from => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new comment form" do
    render

    rendered.should have_selector("form", :action => comments_path, :method => "post") do |form|
      form.should have_selector("input#comment_media_id", :name => "comment[media_id]")
      form.should have_selector("input#comment_comments", :name => "comment[comments]")
      form.should have_selector("input#comment_from", :name => "comment[from]")
      form.should have_selector("input#comment_email", :name => "comment[email]")
    end
  end
end
