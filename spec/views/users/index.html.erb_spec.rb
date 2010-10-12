require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :email => "Email",
        :password => "Password",
        :first_name => "First Name",
        :last_name => "Last Name",
        :full_name => "Full Name",
        :folio_name => "Folio Name",
        :about_me => "MyText"
      ),
      stub_model(User,
        :email => "Email",
        :password => "Password",
        :first_name => "First Name",
        :last_name => "Last Name",
        :full_name => "Full Name",
        :folio_name => "Folio Name",
        :about_me => "MyText"
      )
    ])
  end

  it "renders a list of users" do
    render
    rendered.should have_selector("tr>td", :content => "Email".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Password".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "First Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Last Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Full Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Folio Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
