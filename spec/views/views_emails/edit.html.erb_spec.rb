require 'spec_helper'

describe "views_emails/edit.html.erb" do
  before(:each) do
    @views_email = assign(:views_email, stub_model(ViewsEmail,
      :new_record? => false,
      :email => "MyString"
    ))
  end

  it "renders the edit views_email form" do
    render

    rendered.should have_selector("form", :action => views_email_path(@views_email), :method => "post") do |form|
      form.should have_selector("input#views_email_email", :name => "views_email[email]")
    end
  end
end
