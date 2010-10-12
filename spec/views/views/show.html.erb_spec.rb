require 'spec_helper'

describe "views/show.html.erb" do
  before(:each) do
    @view = assign(:view, stub_model(View,
      :user_id => 1,
      :name => "Name",
      :private => false
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain("Name".to_s)
    rendered.should contain(false.to_s)
  end
end
