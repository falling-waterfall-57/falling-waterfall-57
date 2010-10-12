require 'spec_helper'

describe "views_emails/new.html.erb" do
  before(:each) do
    assign(:views_email, stub_model(ViewsEmail,
      :new_record? => true,
      :email => "MyString"
    ))
  end

  it "renders new views_email form" do
    render

    rendered.should have_selector("form", :action => views_emails_path, :method => "post") do |form|
      form.should have_selector("input#views_email_email", :name => "views_email[email]")
    end
  end
end
