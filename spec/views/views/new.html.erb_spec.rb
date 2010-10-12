require 'spec_helper'

describe "views/new.html.erb" do
  before(:each) do
    assign(:view, stub_model(View,
      :new_record? => true,
      :user_id => 1,
      :name => "MyString",
      :private => false
    ))
  end

  it "renders new view form" do
    render

    rendered.should have_selector("form", :action => views_path, :method => "post") do |form|
      form.should have_selector("input#view_user_id", :name => "view[user_id]")
      form.should have_selector("input#view_name", :name => "view[name]")
      form.should have_selector("input#view_private", :name => "view[private]")
    end
  end
end
