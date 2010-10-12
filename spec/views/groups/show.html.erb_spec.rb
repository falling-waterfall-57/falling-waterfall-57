require 'spec_helper'

describe "groups/show.html.erb" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
  end
end
