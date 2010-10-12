require 'spec_helper'

describe "views_emails/show.html.erb" do
  before(:each) do
    @views_email = assign(:views_email, stub_model(ViewsEmail,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Email".to_s)
  end
end
