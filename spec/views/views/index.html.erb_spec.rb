require 'spec_helper'

describe "views/index.html.erb" do
  before(:each) do
    assign(:views, [
      stub_model(View,
        :user_id => 1,
        :name => "Name",
        :private => false
      ),
      stub_model(View,
        :user_id => 1,
        :name => "Name",
        :private => false
      )
    ])
  end

  it "renders a list of views" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => false.to_s, :count => 2)
  end
end
