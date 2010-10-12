require 'spec_helper'

describe "views_emails/index.html.erb" do
  before(:each) do
    assign(:views_emails, [
      stub_model(ViewsEmail,
        :email => "Email"
      ),
      stub_model(ViewsEmail,
        :email => "Email"
      )
    ])
  end

  it "renders a list of views_emails" do
    render
    rendered.should have_selector("tr>td", :content => "Email".to_s, :count => 2)
  end
end
