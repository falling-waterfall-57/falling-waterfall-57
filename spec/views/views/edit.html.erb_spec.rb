require 'spec_helper'

describe "views/edit.html.erb" do
  before(:each) do
    @view = assign(:view, stub_model(View,
      :new_record? => false,
      :user_id => 1,
      :name => "MyString",
      :private => false
    ))
  end

  it "renders the edit view form" do
    render

    rendered.should have_selector("form", :action => view_path(@view), :method => "post") do |form|
      form.should have_selector("input#view_user_id", :name => "view[user_id]")
      form.should have_selector("input#view_name", :name => "view[name]")
      form.should have_selector("input#view_private", :name => "view[private]")
    end
  end
end
