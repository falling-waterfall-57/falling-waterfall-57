require 'spec_helper'

describe "users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "Email",
      :password => "Password",
      :first_name => "First Name",
      :last_name => "Last Name",
      :full_name => "Full Name",
      :folio_name => "Folio Name",
      :about_me => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Email".to_s)
    rendered.should contain("Password".to_s)
    rendered.should contain("First Name".to_s)
    rendered.should contain("Last Name".to_s)
    rendered.should contain("Full Name".to_s)
    rendered.should contain("Folio Name".to_s)
    rendered.should contain("MyText".to_s)
  end
end
