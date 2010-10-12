require 'spec_helper'

describe "groups/index.html.erb" do
  before(:each) do
    assign(:groups, [
      stub_model(Group,
        :name => "Name"
      ),
      stub_model(Group,
        :name => "Name"
      )
    ])
  end

  it "renders a list of groups" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
  end
end
