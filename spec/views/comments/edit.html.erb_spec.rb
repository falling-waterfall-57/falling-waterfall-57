require 'spec_helper'

describe "comments/edit.html.erb" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :new_record? => false,
      :media_id => 1,
      :comments => "MyString",
      :from => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    rendered.should have_selector("form", :action => comment_path(@comment), :method => "post") do |form|
      form.should have_selector("input#comment_media_id", :name => "comment[media_id]")
      form.should have_selector("input#comment_comments", :name => "comment[comments]")
      form.should have_selector("input#comment_from", :name => "comment[from]")
      form.should have_selector("input#comment_email", :name => "comment[email]")
    end
  end
end
