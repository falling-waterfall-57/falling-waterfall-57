require 'spec_helper'

describe "users/edit.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :new_record? => false,
      :email => "MyString",
      :password => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :full_name => "MyString",
      :folio_name => "MyString",
      :about_me => "MyText"
    ))
  end

  it "renders the edit user form" do
    render

    rendered.should have_selector("form", :action => user_path(@user), :method => "post") do |form|
      form.should have_selector("input#user_email", :name => "user[email]")
      form.should have_selector("input#user_password", :name => "user[password]")
      form.should have_selector("input#user_first_name", :name => "user[first_name]")
      form.should have_selector("input#user_last_name", :name => "user[last_name]")
      form.should have_selector("input#user_full_name", :name => "user[full_name]")
      form.should have_selector("input#user_folio_name", :name => "user[folio_name]")
      form.should have_selector("textarea#user_about_me", :name => "user[about_me]")
    end
  end
end
